<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="f196be60-f9ee-48b2-a1d9-03465bca6cb2" Description="Description for Company.MyDslEmbeddingRelation.MyDslEmbeddingRelation" Name="MyDslEmbeddingRelation" DisplayName="MyDslEmbeddingRelation" Namespace="Company.MyDslEmbeddingRelation" ProductName="MyDslEmbeddingRelation" CompanyName="Company" PackageGuid="6c422edd-8648-4dc6-8cc5-c8b8cbbf2c9e" PackageNamespace="Company.MyDslEmbeddingRelation" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="3dabaa5f-d392-4e0a-9b3c-c06c6d7861d5" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslEmbeddingRelation">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="MyPanel" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="MyNotEmbeddedButton" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasMyNotEmbeddedButton.MyNotEmbeddedButton</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="6dcf5dbb-baf2-4ffe-aad5-d3f266c7f557" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="MyPanel" DisplayName="My Panel" Namespace="Company.MyDslEmbeddingRelation">
      <Properties>
        <DomainProperty Id="9174eeab-9627-42fc-8c62-facd2a21b0bd" Description="Description for Company.MyDslEmbeddingRelation.MyPanel.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="MyEmbeddedButton" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>MyPanelHasMyEmbeddedButton.MyEmbeddedButton</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="f4dc5711-3723-4da5-bfae-dac8bb0e90dd" Description="Description for Company.MyDslEmbeddingRelation.MyEmbeddedButton" Name="MyEmbeddedButton" DisplayName="My Embedded Button" Namespace="Company.MyDslEmbeddingRelation">
      <Properties>
        <DomainProperty Id="287f737b-9404-49f9-bbe5-660cc84137f8" Description="Description for Company.MyDslEmbeddingRelation.MyEmbeddedButton.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="4e5e013a-7a5d-434c-9304-37ce11f59dfe" Description="Description for Company.MyDslEmbeddingRelation.MyNotEmbeddedButton" Name="MyNotEmbeddedButton" DisplayName="My Not Embedded Button" Namespace="Company.MyDslEmbeddingRelation">
      <Properties>
        <DomainProperty Id="76d3c97a-d9c1-42e1-a859-4e1edc2df579" Description="Description for Company.MyDslEmbeddingRelation.MyNotEmbeddedButton.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="238fa424-0e17-413c-a758-e24bd0d9a8d9" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Company.MyDslEmbeddingRelation" IsEmbedding="true">
      <Source>
        <DomainRole Id="f2b553c9-3009-4383-b1d4-8177abfce144" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f02409dd-0cdb-4d92-abc6-c705bb716f09" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="5350a304-40a0-4f1e-b76d-b315f253bd80" Description="Description for Company.MyDslEmbeddingRelation.MyPanelHasMyEmbeddedButton" Name="MyPanelHasMyEmbeddedButton" DisplayName="My Panel Has My Embedded Button" Namespace="Company.MyDslEmbeddingRelation" IsEmbedding="true">
      <Source>
        <DomainRole Id="6974a466-33cb-490c-ace9-0925666c6c0c" Description="Description for Company.MyDslEmbeddingRelation.MyPanelHasMyEmbeddedButton.MyPanel" Name="MyPanel" DisplayName="My Panel" PropertyName="MyEmbeddedButton" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="My Embedded Button">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="bd94a0bb-aec2-49e8-87df-e1d83a6ed2ea" Description="Description for Company.MyDslEmbeddingRelation.MyPanelHasMyEmbeddedButton.MyEmbeddedButton" Name="MyEmbeddedButton" DisplayName="My Embedded Button" PropertyName="MyPanel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="My Panel">
          <RolePlayer>
            <DomainClassMoniker Name="MyEmbeddedButton" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="28f9bbc7-11e1-41a0-9fbc-75d4ae0bbfdf" Description="Description for Company.MyDslEmbeddingRelation.ExampleModelHasMyNotEmbeddedButton" Name="ExampleModelHasMyNotEmbeddedButton" DisplayName="Example Model Has My Not Embedded Button" Namespace="Company.MyDslEmbeddingRelation" IsEmbedding="true">
      <Source>
        <DomainRole Id="342f2d53-c2e6-4477-9b82-807108fb5e65" Description="Description for Company.MyDslEmbeddingRelation.ExampleModelHasMyNotEmbeddedButton.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="MyNotEmbeddedButton" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="My Not Embedded Button">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="789500af-2474-42e7-8c26-1aaae1d76563" Description="Description for Company.MyDslEmbeddingRelation.ExampleModelHasMyNotEmbeddedButton.MyNotEmbeddedButton" Name="MyNotEmbeddedButton" DisplayName="My Not Embedded Button" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MyNotEmbeddedButton" />
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
    <GeometryShape Id="0a94abce-3e03-40cf-94fc-5ff27a2b19ee" Description="Shape used to represent ExampleElements on a Diagram." Name="MyPanelShape" DisplayName="My Panel Shape" Namespace="Company.MyDslEmbeddingRelation" FixedTooltipText="My Panel Shape" FillColor="255, 192, 192" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="f763c4e0-793f-4a16-a91d-c189da06f4cd" Description="Description for Company.MyDslEmbeddingRelation.MyEmbeddedButtonShape" Name="MyEmbeddedButtonShape" DisplayName="My Embedded Button Shape" Namespace="Company.MyDslEmbeddingRelation" FixedTooltipText="My Embedded Button Shape" FillColor="Tomato" InitialHeight="1" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="3464d178-6f1a-4a53-bccc-40d63fa65666" Description="Description for Company.MyDslEmbeddingRelation.MyNotEmbeddedButtonShape" Name="MyNotEmbeddedButtonShape" DisplayName="My Not Embedded Button Shape" Namespace="Company.MyDslEmbeddingRelation" FixedTooltipText="My Not Embedded Button Shape" FillColor="LightSteelBlue" InitialHeight="1" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslEmbeddingRelationSerializationBehavior" Namespace="Company.MyDslEmbeddingRelation">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myNotEmbeddedButton">
            <DomainRelationshipMoniker Name="ExampleModelHasMyNotEmbeddedButton" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyPanel" MonikerAttributeName="name" SerializeId="true" MonikerElementName="myPanelMoniker" ElementName="myPanel" MonikerTypeName="MyPanelMoniker">
        <DomainClassMoniker Name="MyPanel" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="MyPanel/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myEmbeddedButton">
            <DomainRelationshipMoniker Name="MyPanelHasMyEmbeddedButton" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelShapeMoniker" ElementName="myPanelShape" MonikerTypeName="MyPanelShapeMoniker">
        <GeometryShapeMoniker Name="MyPanelShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyDslEmbeddingRelationDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslEmbeddingRelationDiagramMoniker" ElementName="myDslEmbeddingRelationDiagram" MonikerTypeName="MyDslEmbeddingRelationDiagramMoniker">
        <DiagramMoniker Name="MyDslEmbeddingRelationDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelHasMyEmbeddedButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelHasMyEmbeddedButtonMoniker" ElementName="myPanelHasMyEmbeddedButton" MonikerTypeName="MyPanelHasMyEmbeddedButtonMoniker">
        <DomainRelationshipMoniker Name="MyPanelHasMyEmbeddedButton" />
      </XmlClassData>
      <XmlClassData TypeName="MyEmbeddedButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="myEmbeddedButtonMoniker" ElementName="myEmbeddedButton" MonikerTypeName="MyEmbeddedButtonMoniker">
        <DomainClassMoniker Name="MyEmbeddedButton" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyEmbeddedButton/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasMyNotEmbeddedButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasMyNotEmbeddedButtonMoniker" ElementName="exampleModelHasMyNotEmbeddedButton" MonikerTypeName="ExampleModelHasMyNotEmbeddedButtonMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasMyNotEmbeddedButton" />
      </XmlClassData>
      <XmlClassData TypeName="MyNotEmbeddedButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="myNotEmbeddedButtonMoniker" ElementName="myNotEmbeddedButton" MonikerTypeName="MyNotEmbeddedButtonMoniker">
        <DomainClassMoniker Name="MyNotEmbeddedButton" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyNotEmbeddedButton/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyEmbeddedButtonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myEmbeddedButtonShapeMoniker" ElementName="myEmbeddedButtonShape" MonikerTypeName="MyEmbeddedButtonShapeMoniker">
        <GeometryShapeMoniker Name="MyEmbeddedButtonShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyNotEmbeddedButtonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myNotEmbeddedButtonShapeMoniker" ElementName="myNotEmbeddedButtonShape" MonikerTypeName="MyNotEmbeddedButtonShapeMoniker">
        <GeometryShapeMoniker Name="MyNotEmbeddedButtonShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslEmbeddingRelationExplorer" />
  <Diagram Id="b18cc450-cff2-4963-a481-9c96568e0130" Description="Description for Company.MyDslEmbeddingRelation.MyDslEmbeddingRelationDiagram" Name="MyDslEmbeddingRelationDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslEmbeddingRelation">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="MyPanel" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyPanelShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyPanel/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MyPanelShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MyEmbeddedButton" />
        <ParentElementPath>
          <DomainPath>MyPanelHasMyEmbeddedButton.MyPanel/!MyPanel/ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyEmbeddedButtonShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyEmbeddedButton/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MyEmbeddedButtonShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MyNotEmbeddedButton" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasMyNotEmbeddedButton.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyNotEmbeddedButtonShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyNotEmbeddedButton/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MyNotEmbeddedButtonShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslEmbeddingRelation" EditorGuid="4b22f18a-fb47-46c5-94e2-5a2fa3c7c6d9">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslEmbeddingRelationSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslEmbeddingRelation">
      <ElementTool Name="MyPanel" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyPanel" Tooltip="My Panel" HelpKeyword="MyPanel">
        <DomainClassMoniker Name="MyPanel" />
      </ElementTool>
      <ElementTool Name="MyEmbeddedButton" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyEmbeddedButton" Tooltip="My Embedded Button" HelpKeyword="MyEmbeddedButton">
        <DomainClassMoniker Name="MyEmbeddedButton" />
      </ElementTool>
      <ElementTool Name="MyNotEmbeddedButton" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyNotEmbeddedButton" Tooltip="My Not Embedded Button" HelpKeyword="MyNotEmbeddedButton">
        <DomainClassMoniker Name="MyNotEmbeddedButton" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslEmbeddingRelationDiagram" />
  </Designer>
  <Explorer ExplorerGuid="fabddfb0-89cb-4c7e-b751-d8e3b6adf7ea" Title="MyDslEmbeddingRelation Explorer">
    <ExplorerBehaviorMoniker Name="MyDslEmbeddingRelation/MyDslEmbeddingRelationExplorer" />
  </Explorer>
</Dsl>