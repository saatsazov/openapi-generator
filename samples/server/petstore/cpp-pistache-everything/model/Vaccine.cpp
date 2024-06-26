/**
* OpenAPI Petstore
* This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
*
* The version of the OpenAPI document: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "Vaccine.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

Vaccine::Vaccine()
{
    m_BoosterRequired = false;
    
}

void Vaccine::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool Vaccine::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool Vaccine::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "Vaccine" : pathPrefix;

            
    return success;
}

bool Vaccine::operator==(const Vaccine& rhs) const
{
    return
    
    
    (getDate() == rhs.getDate())
     &&
    
    (isBoosterRequired() == rhs.isBoosterRequired())
    
    
    ;
}

bool Vaccine::operator!=(const Vaccine& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const Vaccine& o)
{
    j = nlohmann::json::object();
    j["date"] = o.m_date;
    j["boosterRequired"] = o.m_BoosterRequired;
    
}

void from_json(const nlohmann::json& j, Vaccine& o)
{
    j.at("date").get_to(o.m_date);
    j.at("boosterRequired").get_to(o.m_BoosterRequired);
    
}

nlohmann::json Vaccine::getDate() const
{
    return m_date;
}
void Vaccine::setDate(nlohmann::json const& value)
{
    m_date = value;
}
bool Vaccine::isBoosterRequired() const
{
    return m_BoosterRequired;
}
void Vaccine::setBoosterRequired(bool const value)
{
    m_BoosterRequired = value;
}


} // namespace org::openapitools::server::model

