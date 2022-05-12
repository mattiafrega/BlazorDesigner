<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="84355b77-7928-4874-8f44-8b2e9035e1da" Description="Description for Company.MyDslInheritance.MyDslInheritance" Name="MyDslInheritance" DisplayName="MyDslInheritance" Namespace="Company.MyDslInheritance" ProductName="MyDslInheritance" CompanyName="Company" PackageGuid="6fe39456-fd33-4a54-a9f0-801a1a2cff5c" PackageNamespace="Company.MyDslInheritance" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="f6b74547-f088-4ba3-8096-d17cabb1db56" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslInheritance">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Dog" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasDog.Dog</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Cat" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasCat.Cat</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="8532c6fc-75b8-4d18-b832-a2d1953abd43" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Animal" DisplayName="Animal" InheritanceModifier="Abstract" Namespace="Company.MyDslInheritance">
      <Properties>
        <DomainProperty Id="61746f8c-e6c6-4e8a-807c-e76a17976323" Description="Description for Company.MyDslInheritance.Animal.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="66b5d1ee-37ac-4931-a0fe-22ad7bec14a2" Description="Description for Company.MyDslInheritance.Animal.Animal Property" Name="AnimalProperty" DisplayName="Animal Property">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="03026f0b-c4a8-4ca7-803c-e83f3b99dcb1" Description="Description for Company.MyDslInheritance.Dog" Name="Dog" DisplayName="Dog" Namespace="Company.MyDslInheritance">
      <BaseClass>
        <DomainClassMoniker Name="Animal" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="779546d2-f38c-467f-b80d-fb4c76732554" Description="Description for Company.MyDslInheritance.Dog.Dog Property" Name="DogProperty" DisplayName="Dog Property">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="9105785b-8c5f-4691-9ecc-0eba59ca3dd1" Description="Description for Company.MyDslInheritance.Cat" Name="Cat" DisplayName="Cat" Namespace="Company.MyDslInheritance">
      <BaseClass>
        <DomainClassMoniker Name="Animal" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="337c210d-b95d-4fac-bdbb-770b35bf92a5" Description="Description for Company.MyDslInheritance.Cat.Cat Property" Name="CatProperty" DisplayName="Cat Property">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="f9927609-414c-496f-89c5-7836bc707cb5" Description="Description for Company.MyDslInheritance.ExampleModelHasDog" Name="ExampleModelHasDog" DisplayName="Example Model Has Dog" Namespace="Company.MyDslInheritance" IsEmbedding="true">
      <Source>
        <DomainRole Id="43f31312-3e70-41ee-9f3d-b48c5d7b5754" Description="Description for Company.MyDslInheritance.ExampleModelHasDog.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="Dog" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Dog">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="3f782b8c-2384-4513-aa2d-5bad240ae66c" Description="Description for Company.MyDslInheritance.ExampleModelHasDog.Dog" Name="Dog" DisplayName="Dog" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="Dog" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="3e88c321-5265-4cd0-bd29-0c1487068979" Description="Description for Company.MyDslInheritance.ExampleModelHasCat" Name="ExampleModelHasCat" DisplayName="Example Model Has Cat" Namespace="Company.MyDslInheritance" IsEmbedding="true">
      <Source>
        <DomainRole Id="7d09f78a-c446-4f05-88cc-b2813a1b4cb7" Description="Description for Company.MyDslInheritance.ExampleModelHasCat.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="Cat" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Cat">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d6d04f52-116d-434d-ac22-d76bc9a33b46" Description="Description for Company.MyDslInheritance.ExampleModelHasCat.Cat" Name="Cat" DisplayName="Cat" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="Cat" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <ImageShape Id="77e022d0-7924-4237-81cf-de35f28df8be" Description="Description for Company.MyDslInheritance.DogShape" Name="DogShape" DisplayName="Dog Shape" Namespace="Company.MyDslInheritance" FixedTooltipText="Dog Shape" InitialWidth="2" InitialHeight="2" Image="Resources\dog.png">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DogPropertyDecor" DisplayName="Dog Property Decor" DefaultText="DogPropertyDecor" />
      </ShapeHasDecorators>
    </ImageShape>
    <ImageShape Id="e26fe221-70c2-4ea8-9908-93999418a639" Description="Description for Company.MyDslInheritance.CatShape" Name="CatShape" DisplayName="Cat Shape" Namespace="Company.MyDslInheritance" FixedTooltipText="Cat Shape" InitialWidth="2" InitialHeight="2" Image="Resources\cat.png">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="CatPropertyDecor" DisplayName="Cat Property Decor" DefaultText="CatPropertyDecor" />
      </ShapeHasDecorators>
    </ImageShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslInheritanceSerializationBehavior" Namespace="Company.MyDslInheritance">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="dog">
            <DomainRelationshipMoniker Name="ExampleModelHasDog" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="cat">
            <DomainRelationshipMoniker Name="ExampleModelHasCat" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Animal" MonikerAttributeName="name" SerializeId="true" MonikerElementName="animalMoniker" ElementName="animal" MonikerTypeName="AnimalMoniker">
        <DomainClassMoniker Name="Animal" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Animal/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="animalProperty">
            <DomainPropertyMoniker Name="Animal/AnimalProperty" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyDslInheritanceDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslInheritanceDiagramMoniker" ElementName="myDslInheritanceDiagram" MonikerTypeName="MyDslInheritanceDiagramMoniker">
        <DiagramMoniker Name="MyDslInheritanceDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasDog" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasDogMoniker" ElementName="exampleModelHasDog" MonikerTypeName="ExampleModelHasDogMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasDog" />
      </XmlClassData>
      <XmlClassData TypeName="Dog" MonikerAttributeName="" SerializeId="true" MonikerElementName="dogMoniker" ElementName="dog" MonikerTypeName="DogMoniker">
        <DomainClassMoniker Name="Dog" />
        <ElementData>
          <XmlPropertyData XmlName="dogProperty">
            <DomainPropertyMoniker Name="Dog/DogProperty" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasCat" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasCatMoniker" ElementName="exampleModelHasCat" MonikerTypeName="ExampleModelHasCatMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasCat" />
      </XmlClassData>
      <XmlClassData TypeName="Cat" MonikerAttributeName="" SerializeId="true" MonikerElementName="catMoniker" ElementName="cat" MonikerTypeName="CatMoniker">
        <DomainClassMoniker Name="Cat" />
        <ElementData>
          <XmlPropertyData XmlName="catProperty">
            <DomainPropertyMoniker Name="Cat/CatProperty" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DogShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="dogShapeMoniker" ElementName="dogShape" MonikerTypeName="DogShapeMoniker">
        <ImageShapeMoniker Name="DogShape" />
      </XmlClassData>
      <XmlClassData TypeName="CatShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="catShapeMoniker" ElementName="catShape" MonikerTypeName="CatShapeMoniker">
        <ImageShapeMoniker Name="CatShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslInheritanceExplorer" />
  <Diagram Id="99eb5411-5f2f-48da-9166-d5d61e575b3a" Description="Description for Company.MyDslInheritance.MyDslInheritanceDiagram" Name="MyDslInheritanceDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslInheritance">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Cat" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasCat.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CatShape/CatPropertyDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Cat/CatProperty" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="CatShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Dog" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasDog.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DogShape/DogPropertyDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Dog/DogProperty" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="DogShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslInheritance" EditorGuid="bf697c2c-2833-407a-bd23-c53f61098977">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslInheritanceSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslInheritance">
      <ElementTool Name="Dog" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Dog" Tooltip="Dog" HelpKeyword="Dog">
        <DomainClassMoniker Name="Dog" />
      </ElementTool>
      <ElementTool Name="Cat" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Cat" Tooltip="Cat" HelpKeyword="Cat">
        <DomainClassMoniker Name="Cat" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslInheritanceDiagram" />
  </Designer>
  <Explorer ExplorerGuid="79a19aa5-61d0-48f6-8912-6ba1239bf8e6" Title="MyDslInheritance Explorer">
    <ExplorerBehaviorMoniker Name="MyDslInheritance/MyDslInheritanceExplorer" />
  </Explorer>
</Dsl>