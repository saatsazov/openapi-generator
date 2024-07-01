package org.openapitools.codegen.languages;

import io.swagger.v3.oas.models.Operation;
import io.swagger.v3.oas.models.media.Schema;
import io.swagger.v3.oas.models.media.StringSchema;
import io.swagger.v3.oas.models.responses.ApiResponse;
import org.openapitools.codegen.*;
import io.swagger.models.properties.ArrayProperty;
import io.swagger.models.properties.MapProperty;
import io.swagger.models.properties.Property;
import io.swagger.models.parameters.Parameter;

import java.io.File;
import java.util.*;

import org.apache.commons.lang3.StringUtils;

import org.openapitools.codegen.utils.ModelUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static org.openapitools.codegen.utils.StringUtils.camelize;

public class GdscriptClientCodegen extends DefaultCodegen implements CodegenConfig {
    public static final String PROJECT_NAME = "projectName";

    private final Logger LOGGER = LoggerFactory.getLogger(GdscriptClientCodegen.class);

    public CodegenType getTag() {
        return CodegenType.CLIENT;
    }

    public String getName() {
        return "gdscript";
    }

    public String getHelp() {
        return "Generates a gdscript client.";
    }

    public GdscriptClientCodegen() {
        super();

        outputFolder = "generated-code" + File.separator + "gdscript";
        modelTemplateFiles.put("model.mustache", ".gd");
        apiTemplateFiles.put("api.mustache", ".gd");
        embeddedTemplateDir = templateDir = "gdscript";
        apiPackage = "Apis";
        modelPackage = "Models";
        modelNamePrefix = "";
        modelNameSuffix = "";
        // TODO: Fill this out.

        typeMapping = new HashMap<>();
        typeMapping.put("integer", "int");
        typeMapping.put("number", "float");
        typeMapping.put("string", "String");
        typeMapping.put("boolean", "bool");
//        typeMapping.put("array", "Array");
//        typeMapping.put("map", "Dictionary");
        typeMapping.put("file", "FileAccess");
        typeMapping.put("DateTime", "String");

        instantiationTypes = new HashMap<>();
    }

//    @Override
//    public  String toParamType(String name) {
//        return "kek" + name + "lol";
//    }
    public String toModelName(String name) {
//        return "kek" + name + "lol";

        return camelize(name);
    }

    @Override
    protected void handleMethodResponse(Operation operation, Map<String, Schema> schemas, CodegenOperation op,
                                        ApiResponse methodResponse) {
        super.handleMethodResponse(operation, schemas, op, methodResponse, Collections.emptyMap());

        op.returnType = "kek" + op.returnType  + "lol";
    }

    protected void handleMethodResponse(Operation operation,
                                        Map<String, Schema> schemas,
                                        CodegenOperation op,
                                        ApiResponse methodResponse,
                                        Map<String, String> importMappings) {
        super.handleMethodResponse(operation, schemas, op, methodResponse, importMappings);

        op.returnType = camelize(op.returnType);

        // see comment in getTypeDeclaration
//        if (op.isResponseFile) {
//            op.returnType = "Buffer";
//        }
    }

//    @Override
//    public String toParamName(String name) {
//        return  super.toParamName(name);
//    }
    @Override
    public String getTypeDeclaration(Schema schema) {
        if(ModelUtils.isArraySchema(schema)) {
            String complexType = getTypeDeclaration(ModelUtils.getSchemaItems(schema));
            StringBuilder sb = new StringBuilder("Array[");
            sb.append(complexType);
            return sb.append("]").toString();
        }
        if(ModelUtils.isMapSchema(schema)) {
            Schema inner = ModelUtils.getAdditionalProperties(schema);
            if (inner == null) {
//                LOGGER.warn("{}(map property) does not have a proper inner type defined. Default to string", p.getName());
                inner = new StringSchema().description("TODO default missing map inner type to string");
            }
            return "Dictionary";
//            return getSchemaType(schema) + "<string," + getTypeDeclaration(inner) + ">";
//            String complexType = getTypeDeclaration(ModelUtils.getSchemaItems(schema));
//            StringBuilder sb = new StringBuilder("Dictionary[");
//            sb.append(complexType);
//            return sb.append("]").toString();
        }

    return  super.getTypeDeclaration(schema);
    }

//    public String getTypeDeclaration(String name) {
//        return name;
//    }

    @Override
    public String toOperationId(String operationId) {
        String s1 = operationId.substring(operationId.indexOf(".") + 1);
        s1.trim();
        return s1;
    }
}
