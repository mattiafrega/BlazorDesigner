<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="38786185-0723-47a9-b22d-529ad024560d" Description="Description for Company.MyDslModeling.MyDslModeling" Name="MyDslModeling" DisplayName="MyDslModeling" Namespace="Company.MyDslModeling" ProductName="MyDslModeling" CompanyName="Company" PackageGuid="386f7c38-014e-428b-90a8-c1a245a5361e" PackageNamespace="Company.MyDslModeling" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="4efe497b-a0b3-499c-9fa7-8b667d23cd54" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslModeling">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="MyObject" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="MySecondObject" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasMySecondObject.MySecondObject</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="cbcfee31-40eb-4aa3-a2ad-9c475a779717" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="MyObject" DisplayName="My Object" Namespace="Company.MyDslModeling">
      <Properties>
        <DomainProperty Id="3e1af7e0-4dad-485a-88e9-e665d8444348" Description="Description for Company.MyDslModeling.MyObject.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1d5acc19-e4d4-46dc-a8fa-6285a7e12453" Description="Description for Company.MyDslModeling.MyObject.Caption" Name="Caption" DisplayName="Caption" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="a33e6af1-f244-449e-bfa5-693fad6dcbf0" Description="Description for Company.MyDslModeling.MySecondObject" Name="MySecondObject" DisplayName="My Second Object" Namespace="Company.MyDslModeling">
      <Properties>
        <DomainProperty Id="fee504a5-775b-45c8-8165-7c1e055cfb4c" Description="Description for Company.MyDslModeling.MySecondObject.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="36dafbc1-4333-40d3-aebe-f65d27c27813" Description="Description for Company.MyDslModeling.MySecondObject.Caption" Name="Caption" DisplayName="Caption">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="491e7842-ed34-40a9-a43d-83521784788f" Description="Description for Company.MyDslModeling.MySecondObject.Title" Name="Title" DisplayName="Title">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="c561eadd-7262-4e1a-84ff-96f917476169" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Company.MyDslModeling" IsEmbedding="true">
      <Source>
        <DomainRole Id="fab70bf9-6231-4909-a240-fc4d61a25bb8" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="aeee8b2d-681c-47d6-965f-4c146f135255" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MyObject" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="72d12845-2f13-4eda-b57d-b2ceb95998f5" Description="Description for Company.MyDslModeling.ExampleModelHasMySecondObject" Name="ExampleModelHasMySecondObject" DisplayName="Example Model Has My Second Object" Namespace="Company.MyDslModeling" IsEmbedding="true">
      <Source>
        <DomainRole Id="a393ea5f-6a0d-48fc-96ca-b67a739f3b47" Description="Description for Company.MyDslModeling.ExampleModelHasMySecondObject.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="MySecondObject" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="My Second Object">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="18888860-b3f0-41e3-bb04-7eaf4b54b5e3" Description="Description for Company.MyDslModeling.ExampleModelHasMySecondObject.MySecondObject" Name="MySecondObject" DisplayName="My Second Object" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MySecondObject" />
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
    <ExternalType Name="Color" Namespace="System.Drawing" />
    <ExternalType Name="DashStyle" Namespace="System.Drawing.Drawing2D" />
  </Types>
  <Shapes>
    <ImageShape Id="489c8418-5b8d-46bd-96fb-4059d105e436" Description="Description for Company.MyDslModeling.MyObjectShape" Name="MyObjectShape" DisplayName="My Object Shape" Namespace="Company.MyDslModeling" FixedTooltipText="My Object Shape" InitialHeight="1" Image="Resources\gaugepng.png">
      <ShapeHasDecorators Position="OuterTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="CaptionDecorator" DisplayName="Caption Decorator" DefaultText="CaptionDecorator" FontSize="10" />
      </ShapeHasDecorators>
    </ImageShape>
    <GeometryShape Id="48aad25c-374a-4e33-95b7-0674db31bbc5" Description="Description for Company.MyDslModeling.MySecondObjShape" Name="MySecondObjShape" DisplayName="My Second Obj Shape" Namespace="Company.MyDslModeling" FixedTooltipText="My Second Obj Shape" InitialWidth="3" InitialHeight="3" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="783f67e6-e6be-4cd7-a218-6b29dfbc8a70" Description="Description for Company.MyDslModeling.MySecondObjShape.Val" Name="Val" DisplayName="Val" DefaultValue="15">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="CaptionDecorator" DisplayName="Caption Decorator" DefaultText="questo gauge è disegnato con System.Drawings. Accetta valori nella scala da 0 a 100 mappati sul range 0-180" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TitleDecorator" DisplayName="Title Decorator" DefaultText="Gauge" FontStyle="Bold, Underline" FontSize="12" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslModelingSerializationBehavior" Namespace="Company.MyDslModeling">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="mySecondObject">
            <DomainRelationshipMoniker Name="ExampleModelHasMySecondObject" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyObject" MonikerAttributeName="name" SerializeId="true" MonikerElementName="myObjectMoniker" ElementName="myObject" MonikerTypeName="MyObjectMoniker">
        <DomainClassMoniker Name="MyObject" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="MyObject/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="caption">
            <DomainPropertyMoniker Name="MyObject/Caption" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="MyDslModelingDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslModelingDiagramMoniker" ElementName="myDslModelingDiagram" MonikerTypeName="MyDslModelingDiagramMoniker">
        <DiagramMoniker Name="MyDslModelingDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="MyObjectShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myObjectShapeMoniker" ElementName="myObjectShape" MonikerTypeName="MyObjectShapeMoniker">
        <ImageShapeMoniker Name="MyObjectShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasMySecondObject" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasMySecondObjectMoniker" ElementName="exampleModelHasMySecondObject" MonikerTypeName="ExampleModelHasMySecondObjectMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasMySecondObject" />
      </XmlClassData>
      <XmlClassData TypeName="MySecondObject" MonikerAttributeName="" SerializeId="true" MonikerElementName="mySecondObjectMoniker" ElementName="mySecondObject" MonikerTypeName="MySecondObjectMoniker">
        <DomainClassMoniker Name="MySecondObject" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MySecondObject/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="caption">
            <DomainPropertyMoniker Name="MySecondObject/Caption" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="title">
            <DomainPropertyMoniker Name="MySecondObject/Title" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MySecondObjShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="mySecondObjShapeMoniker" ElementName="mySecondObjShape" MonikerTypeName="MySecondObjShapeMoniker">
        <GeometryShapeMoniker Name="MySecondObjShape" />
        <ElementData>
          <XmlPropertyData XmlName="val">
            <DomainPropertyMoniker Name="MySecondObjShape/Val" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslModelingExplorer" />
  <Diagram Id="56b649df-03e2-4448-93ef-11b024cc9608" Description="Description for Company.MyDslModeling.MyDslModelingDiagram" Name="MyDslModelingDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslModeling">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="MyObject" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="MyObjectShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MySecondObject" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasMySecondObject.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="MySecondObjShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslModeling" EditorGuid="b907fe2d-963e-4749-a172-9c20826694c7">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslModelingSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslModeling">
      <ElementTool Name="MyObject" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="MyObject" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="MyObject" />
      </ElementTool>
      <ElementTool Name="MySecondObj" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MySecondObj" Tooltip="My Second Obj" HelpKeyword="MySecondObj">
        <DomainClassMoniker Name="MySecondObject" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslModelingDiagram" />
  </Designer>
  <Explorer ExplorerGuid="4edd8f50-0935-4ebc-bc7b-6b342dcbee98" Title="MyDslModeling Explorer">
    <ExplorerBehaviorMoniker Name="MyDslModeling/MyDslModelingExplorer" />
  </Explorer>
</Dsl>