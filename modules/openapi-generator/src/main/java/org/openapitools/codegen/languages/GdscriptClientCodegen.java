package org.openapitools.codegen.languages;

import io.swagger.v3.oas.models.Operation;
import io.swagger.v3.oas.models.media.Schema;
import io.swagger.v3.oas.models.responses.ApiResponse;
import org.openapitools.codegen.*;
import io.swagger.models.properties.ArrayProperty;
import io.swagger.models.properties.MapProperty;
import io.swagger.models.properties.Property;
import io.swagger.models.parameters.Parameter;

import java.io.File;
import java.util.*;

import org.apache.commons.lang3.StringUtils;

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
        typeMapping.put("array", "Array");
        typeMapping.put("file", "FileAccess");
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

    @Override
    public String toOperationId(String operationId) {
        String s1 = operationId.substring(operationId.indexOf(".") + 1);
        s1.trim();
        return s1;
    }
}
