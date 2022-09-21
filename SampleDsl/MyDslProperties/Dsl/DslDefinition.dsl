<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="32a5b050-24e4-4f64-ba72-c62fa4b7d268" Description="Description for Company.MyDslProperties.MyDslProperties" Name="MyDslProperties" DisplayName="MyDslProperties" Namespace="Company.MyDslProperties" ProductName="MyDslProperties" CompanyName="Company" PackageGuid="a15c17e4-44d7-49f8-8c01-1d46f66a4d58" PackageNamespace="Company.MyDslProperties" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="923fdba0-e8e7-4127-a9c3-afa9c5536602" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslProperties">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="Person" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="8c7ccff4-9044-4367-b2e3-e9901afe31e9" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Person" DisplayName="Person" Namespace="Company.MyDslProperties">
      <Properties>
        <DomainProperty Id="a55bd14c-22b2-4889-b78e-bcea6eaef04c" Description="Description for Company.MyDslProperties.Person.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f2d30c09-9c4d-45a2-b485-a59f2c3da138" Description="Description for Company.MyDslProperties.Person.Age" Name="Age" DisplayName="Age">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8f68c9ae-e33d-47e4-9ab9-d698fe10013f" Description="Description for Company.MyDslProperties.Person.Year of  Birth" Name="Year of Birth" DisplayName="Year of  Birth">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="69eb8e6b-319e-4725-808c-d971cb1635b8" Description="Description for Company.MyDslProperties.Person.Address" Name="Address" DisplayName="Address">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="5cddc71c-4ca4-454e-9c0e-33a3e8ae0896" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Company.MyDslProperties" IsEmbedding="true">
      <Source>
        <DomainRole Id="5c7a0c53-af66-47a9-a5f7-7427c1fa7656" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="cb6e59a7-8931-44a1-a48b-4fc4711a9e08" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
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
    <GeometryShape Id="d6766607-b53e-43c0-bb73-bb11f7ea2ab7" Description="Shape used to represent ExampleElements on a Diagram." Name="PersonShape" DisplayName="Person Shape" Namespace="Company.MyDslProperties" FixedTooltipText="Person Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslPropertiesSerializationBehavior" Namespace="Company.MyDslProperties">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Person" MonikerAttributeName="name" SerializeId="true" MonikerElementName="personMoniker" ElementName="person" MonikerTypeName="PersonMoniker">
        <DomainClassMoniker Name="Person" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Person/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="age">
            <DomainPropertyMoniker Name="Person/Age" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="year of Birth">
            <DomainPropertyMoniker Name="Person/Year of Birth" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="address">
            <DomainPropertyMoniker Name="Person/Address" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="PersonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="personShapeMoniker" ElementName="personShape" MonikerTypeName="PersonShapeMoniker">
        <GeometryShapeMoniker Name="PersonShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyDslPropertiesDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslPropertiesDiagramMoniker" ElementName="myDslPropertiesDiagram" MonikerTypeName="MyDslPropertiesDiagramMoniker">
        <DiagramMoniker Name="MyDslPropertiesDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslPropertiesExplorer" />
  <Diagram Id="c161c59a-d915-4a9e-98ab-1a0e7caa7fc6" Description="Description for Company.MyDslProperties.MyDslPropertiesDiagram" Name="MyDslPropertiesDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslProperties">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Person" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PersonShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Person/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="PersonShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslProperties" EditorGuid="1f038b7e-782b-423d-b5f4-0b8136ec62b0">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslPropertiesSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslProperties">
      <ElementTool Name="ExampleElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="ExampleElement" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="Person" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslPropertiesDiagram" />
  </Designer>
  <Explorer ExplorerGuid="b1be1ea1-b8d2-49e0-af3e-b38ea36be892" Title="MyDslProperties Explorer">
    <ExplorerBehaviorMoniker Name="MyDslProperties/MyDslPropertiesExplorer" />
  </Explorer>
</Dsl>