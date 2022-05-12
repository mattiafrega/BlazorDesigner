<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="7c81e28f-26dd-4a65-bdad-01f9bbd28e0d" Description="Description for Company.MyDslRelation.MyDslRelation" Name="MyDslRelation" DisplayName="MyDslRelation" Namespace="Company.MyDslRelation" ProductName="MyDslRelation" CompanyName="Company" PackageGuid="1c4886be-0586-492d-b192-32567284647e" PackageNamespace="Company.MyDslRelation" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="3949f399-f571-4e51-ac04-09b9cedfa87b" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslRelation">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="MyButton" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="917d0dde-cf8e-4c2f-8d31-31b8eb885de0" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="MyButton" DisplayName="My Button" Namespace="Company.MyDslRelation">
      <Properties>
        <DomainProperty Id="324d50c2-3dde-47a1-8a68-be0ad69b2143" Description="Description for Company.MyDslRelation.MyButton.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="d884d010-8679-4b43-ae79-80fcdeb22925" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Company.MyDslRelation" IsEmbedding="true">
      <Source>
        <DomainRole Id="39892d17-0686-4347-bebe-d9a53eaa5013" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f2456ee3-0fbb-4045-8dd4-97006a18d3f1" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MyButton" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="49ef33c9-9bd5-41b7-81be-292dbebc1ee0" Description="Reference relationship between Elements." Name="MyButtonReferencesTargets" DisplayName="My Button References Targets" Namespace="Company.MyDslRelation">
      <Source>
        <DomainRole Id="029b333d-8b96-4993-b5c1-78bf519502c2" Description="Description for Company.MyDslRelation.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="MyButton" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="3d37346b-00e1-4172-bcdc-34ce3a8ad9a9" Description="Description for Company.MyDslRelation.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="MyButton" />
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
    <GeometryShape Id="7ceadd9f-a883-4fbb-b41b-f2255e801ca2" Description="Shape used to represent ExampleElements on a Diagram." Name="MyButtonShape" DisplayName="My Button Shape" Namespace="Company.MyDslRelation" FixedTooltipText="My Button Shape" FillColor="Lime" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="369d1dca-087e-446e-aedf-d9d3b8a909d4" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="MyConnector" DisplayName="My Connector" Namespace="Company.MyDslRelation" FixedTooltipText="My Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="MyDslRelationSerializationBehavior" Namespace="Company.MyDslRelation">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyButton" MonikerAttributeName="name" SerializeId="true" MonikerElementName="myButtonMoniker" ElementName="myButton" MonikerTypeName="MyButtonMoniker">
        <DomainClassMoniker Name="MyButton" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="MyButton/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="MyButtonReferencesTargets" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="MyButtonReferencesTargets" MonikerAttributeName="" SerializeId="true" MonikerElementName="myButtonReferencesTargetsMoniker" ElementName="myButtonReferencesTargets" MonikerTypeName="MyButtonReferencesTargetsMoniker">
        <DomainRelationshipMoniker Name="MyButtonReferencesTargets" />
      </XmlClassData>
      <XmlClassData TypeName="MyButtonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myButtonShapeMoniker" ElementName="myButtonShape" MonikerTypeName="MyButtonShapeMoniker">
        <GeometryShapeMoniker Name="MyButtonShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="myConnectorMoniker" ElementName="myConnector" MonikerTypeName="MyConnectorMoniker">
        <ConnectorMoniker Name="MyConnector" />
      </XmlClassData>
      <XmlClassData TypeName="MyDslRelationDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslRelationDiagramMoniker" ElementName="myDslRelationDiagram" MonikerTypeName="MyDslRelationDiagramMoniker">
        <DiagramMoniker Name="MyDslRelationDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslRelationExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="MyButtonReferencesTargetsBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="MyButtonReferencesTargets" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyButton" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyButton" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="760f69c8-1c57-4938-ada4-9362b24bbe6a" Description="Description for Company.MyDslRelation.MyDslRelationDiagram" Name="MyDslRelationDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslRelation">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="MyButton" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyButtonShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyButton/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MyButtonShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="MyConnector" />
        <DomainRelationshipMoniker Name="MyButtonReferencesTargets" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslRelation" EditorGuid="4f44248b-43c8-4bf0-b449-690fbd9baa3b">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslRelationSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslRelation">
      <ElementTool Name="MyButton" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="MyButton" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="MyButton" />
      </ElementTool>
      <ConnectionTool Name="MyConnector" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="MyConnector" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="MyDslRelation/MyButtonReferencesTargetsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslRelationDiagram" />
  </Designer>
  <Explorer ExplorerGuid="38ae131a-4643-47c7-a5c1-82d59a1f5f07" Title="MyDslRelation Explorer">
    <ExplorerBehaviorMoniker Name="MyDslRelation/MyDslRelationExplorer" />
  </Explorer>
</Dsl>