<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="445584b3-55a0-4d99-805f-67a0d37e4883" Description="Description for Company.MyDslXYCoordinates.MyDslXYCoordinates" Name="MyDslXYCoordinates" DisplayName="MyDslXYCoordinates" Namespace="Company.MyDslXYCoordinates" ProductName="MyDslXYCoordinates" CompanyName="Company" PackageGuid="423c4d6f-fa08-4062-83a2-76b3bb8bc0db" PackageNamespace="Company.MyDslXYCoordinates" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="e876bc3c-1ce6-4375-bdab-736dd8baaca0" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslXYCoordinates">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="ExampleElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="7d9002cc-fb52-47a5-ac98-b7cc79d8fc20" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="ExampleElement" DisplayName="Example Element" Namespace="Company.MyDslXYCoordinates">
      <Properties>
        <DomainProperty Id="3ce49724-d3c9-41ef-8f83-f3c25cd94245" Description="Description for Company.MyDslXYCoordinates.ExampleElement.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="986f940a-8b12-412b-93cc-f0e4ae0eec9f" Description="Description for Company.MyDslXYCoordinates.ExampleElement.X" Name="X" DisplayName="X" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="be046cb3-a93e-4a9c-87f8-a4dcfdcec7b8" Description="Description for Company.MyDslXYCoordinates.ExampleElement.Y" Name="Y" DisplayName="Y" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b2453175-446a-4732-af72-1690127a924c" Description="Description for Company.MyDslXYCoordinates.ExampleElement.Width" Name="Width" DisplayName="Width" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0aa51cdf-d467-4272-9759-478d1827fce9" Description="Description for Company.MyDslXYCoordinates.ExampleElement.Height" Name="Height" DisplayName="Height" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1050f58f-ead7-4b64-88c4-c866252c6fe4" Description="Description for Company.MyDslXYCoordinates.ExampleElement.Comment" Name="Comment" DisplayName="Comment">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="8db24643-1290-48bb-8219-eba9fb15d193" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Company.MyDslXYCoordinates" IsEmbedding="true">
      <Source>
        <DomainRole Id="b531041f-b92a-4604-9518-de874daf1687" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="410e0dd6-1670-48cc-8123-a08222c220f6" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleElement" />
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
    <GeometryShape Id="ff9b4f0c-b437-4649-a6ea-d8028c256de9" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="Company.MyDslXYCoordinates" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="OuterTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomRight" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="XDecorator" DisplayName="XDecorator" DefaultText="XDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="YDecorator" DisplayName="YDecorator" DefaultText="YDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="WidthDecorator" DisplayName="Width Decorator" DefaultText="WidthDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="HeightDecorator" DisplayName="Height Decorator" DefaultText="HeightDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="CommentDecor" DisplayName="Comment Decor" DefaultText="CommentDecor" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslXYCoordinatesSerializationBehavior" Namespace="Company.MyDslXYCoordinates">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleElement" MonikerAttributeName="name" SerializeId="true" MonikerElementName="exampleElementMoniker" ElementName="exampleElement" MonikerTypeName="ExampleElementMoniker">
        <DomainClassMoniker Name="ExampleElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="ExampleElement/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="x" Representation="Ignore">
            <DomainPropertyMoniker Name="ExampleElement/X" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="y" Representation="Ignore">
            <DomainPropertyMoniker Name="ExampleElement/Y" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="width" Representation="Ignore">
            <DomainPropertyMoniker Name="ExampleElement/Width" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="height" Representation="Ignore">
            <DomainPropertyMoniker Name="ExampleElement/Height" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="comment">
            <DomainPropertyMoniker Name="ExampleElement/Comment" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleShapeMoniker" ElementName="exampleShape" MonikerTypeName="ExampleShapeMoniker">
        <GeometryShapeMoniker Name="ExampleShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyDslXYCoordinatesDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslXYCoordinatesDiagramMoniker" ElementName="myDslXYCoordinatesDiagram" MonikerTypeName="MyDslXYCoordinatesDiagramMoniker">
        <DiagramMoniker Name="MyDslXYCoordinatesDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslXYCoordinatesExplorer" />
  <Diagram Id="4e8f834f-c6aa-47a6-a56d-f386862db7af" Description="Description for Company.MyDslXYCoordinates.MyDslXYCoordinatesDiagram" Name="MyDslXYCoordinatesDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslXYCoordinates">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="ExampleElement" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ExampleElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/HeightDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ExampleElement/Height" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/CommentDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ExampleElement/Comment" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/WidthDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ExampleElement/Width" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/XDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ExampleElement/X" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/YDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ExampleElement/Y" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslXYCoordinates" EditorGuid="91e13b8e-fa11-49a5-84ad-f62c9905e47e">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslXYCoordinatesSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslXYCoordinates">
      <ElementTool Name="ExampleElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="ExampleElement" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="ExampleElement" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslXYCoordinatesDiagram" />
  </Designer>
  <Explorer ExplorerGuid="b4c18f42-bb7d-4cc3-924b-106b9cb6e42b" Title="MyDslXYCoordinates Explorer">
    <ExplorerBehaviorMoniker Name="MyDslXYCoordinates/MyDslXYCoordinatesExplorer" />
  </Explorer>
</Dsl>