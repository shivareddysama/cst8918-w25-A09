# Azure Provider Configuration
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "shiva" {
  name     = "shiva-resources"
  location = "Canada Central"
}

# Create a storage account
resource "azurerm_storage_account" "shiva" {
  name                     = "shivastorageacc123"
  resource_group_name      = azurerm_resource_group.shiva.name
  location                 = azurerm_resource_group.shiva.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}resource "azurerm_resource_group" "another" {name="test"location="West US"}
resource "azurerm_resource_group" "another" {name="test"location="West US"}
resource "azurerm_resource_group" "test" {name="test"location="Canada Central"}
