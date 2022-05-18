<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="38476d44-74a2-4891-bdf5-b5d2b9c42dcb" Description="Description for Company.MyDslComponents.MyDslComponents" Name="MyDslComponents" DisplayName="MyDslComponents" Namespace="Company.MyDslComponents" ProductName="MyDslComponents" CompanyName="Company" PackageGuid="8bf03763-7a37-44f3-8516-11ef3578ac6f" PackageNamespace="Company.MyDslComponents" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="d0496c9f-ce81-4d80-8eea-fd8d9e5b8006" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslComponents">
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
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="MyTextbox" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasMyTextbox.MyTextbox</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="MyGauge" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasMyGauge.MyGauge</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="0b0a9e8b-6ee9-48ad-b086-d9c4a0eba137" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="MyButton" DisplayName="My Button" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="MyComponent" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="05b92620-fe5d-4ce7-b613-1960866b200c" Description="Description for Company.MyDslComponents.MyButton.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="28783485-1b33-4e59-8fca-3c5272e6528b" Description="Description for Company.MyDslComponents.MyButton.Text" Name="Text" DisplayName="Text">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="3e4bc35c-11f6-4f95-92d6-0ec304383641" Description="Description for Company.MyDslComponents.MyTextbox" Name="MyTextbox" DisplayName="My Textbox" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="MyComponent" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="c5f27e70-f554-497b-a22e-aeb8dc69228a" Description="Description for Company.MyDslComponents.MyTextbox.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="608bc7ff-4934-4944-9884-0d8f2daa6bbf" Description="Description for Company.MyDslComponents.MyTextbox.Text" Name="Text" DisplayName="Text">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="9a2e1c4e-7437-492e-8fcf-325e93b8a3a8" Description="Description for Company.MyDslComponents.MyGauge" Name="MyGauge" DisplayName="My Gauge" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="MyComponent" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="52f9f926-79c9-446e-a370-a4c696419319" Description="Description for Company.MyDslComponents.MyGauge.Range Start" Name="RangeStart" DisplayName="Range Start">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="e2d7dd5d-3fc2-4b38-839e-cddb2a6bfe7a" Description="Description for Company.MyDslComponents.MyGauge.Range End" Name="RangeEnd" DisplayName="Range End">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b4a03819-d372-45ea-9cab-e1ec202f6105" Description="Description for Company.MyDslComponents.MyGauge.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="5fa966a9-84fb-467e-9189-06278eaecfba" Description="Description for Company.MyDslComponents.MyComponent" Name="MyComponent" DisplayName="My Component" InheritanceModifier="Abstract" Namespace="Company.MyDslComponents" />
  </Classes>
  <Relationships>
    <DomainRelationship Id="47dccd67-a58d-4a32-a17d-b214354dc8b1" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Company.MyDslComponents" IsEmbedding="true">
      <Source>
        <DomainRole Id="e2991666-69ee-4198-aa74-58b7491119d5" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="3f31746e-f47c-4609-ad2b-68587bdeea78" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MyButton" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="5e70a1f5-bb3f-4c63-9e68-a703280841a8" Description="Description for Company.MyDslComponents.ExampleModelHasMyTextbox" Name="ExampleModelHasMyTextbox" DisplayName="Example Model Has My Textbox" Namespace="Company.MyDslComponents" IsEmbedding="true">
      <Source>
        <DomainRole Id="71edb545-64db-4cdf-b07a-b9788febc656" Description="Description for Company.MyDslComponents.ExampleModelHasMyTextbox.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="MyTextbox" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="My Textbox">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="140de811-94d0-40b0-8841-5e75585f757d" Description="Description for Company.MyDslComponents.ExampleModelHasMyTextbox.MyTextbox" Name="MyTextbox" DisplayName="My Textbox" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MyTextbox" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e84b9f4e-9720-4c0b-9d9d-76cca2df366d" Description="Description for Company.MyDslComponents.ExampleModelHasMyGauge" Name="ExampleModelHasMyGauge" DisplayName="Example Model Has My Gauge" Namespace="Company.MyDslComponents" IsEmbedding="true">
      <Source>
        <DomainRole Id="73c88474-c94b-44bf-9a8a-1de5b622c691" Description="Description for Company.MyDslComponents.ExampleModelHasMyGauge.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="MyGauge" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="My Gauge">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="8e2c5289-a743-4d4a-b7bd-c36517eb5710" Description="Description for Company.MyDslComponents.ExampleModelHasMyGauge.MyGauge" Name="MyGauge" DisplayName="My Gauge" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MyGauge" />
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
    <ImageShape Id="d96f9636-4f48-4cc1-8761-bfbb40e1e3f5" Description="Description for Company.MyDslComponents.MyButtonShape" Name="MyButtonShape" DisplayName="My Button Shape" Namespace="Company.MyDslComponents" FixedTooltipText="My Button Shape" InitialWidth="2" InitialHeight="1" Image="Resources\buttonImage.png">
      <ShapeHasDecorators Position="OuterTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecor" DisplayName="Name Decor" DefaultText="NameDecor" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TextDecor" DisplayName="Text Decor" DefaultText="TextDecor" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
    </ImageShape>
    <ImageShape Id="d489b876-122a-47ca-a665-ee2677c482d7" Description="Description for Company.MyDslComponents.MyTextboxShape" Name="MyTextboxShape" DisplayName="My Textbox Shape" Namespace="Company.MyDslComponents" FixedTooltipText="My Textbox Shape" InitialWidth="2" InitialHeight="1" Image="Resources\textboxImage.png">
      <ShapeHasDecorators Position="OuterTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecor" DisplayName="Name Decor" DefaultText="NameDecor" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TextDecor" DisplayName="Text Decor" DefaultText="TextDecor" FontSize="10" />
      </ShapeHasDecorators>
    </ImageShape>
    <ImageShape Id="eb5a07be-74ed-448f-bd10-2f5524d5d0e2" Description="Description for Company.MyDslComponents.MyGaugeShape" Name="MyGaugeShape" DisplayName="My Gauge Shape" Namespace="Company.MyDslComponents" FixedTooltipText="My Gauge Shape" InitialWidth="2" InitialHeight="2" Image="Resources\gaugeImage.png">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="RangeStartDecor" DisplayName="Range Start Decor" DefaultText="RangeStartDecor" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="RangeEndDecor" DisplayName="Range End Decor" DefaultText="RangeEndDecor" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecor" DisplayName="Name Decor" DefaultText="NameDecor" />
      </ShapeHasDecorators>
    </ImageShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslComponentsSerializationBehavior" Namespace="Company.MyDslComponents">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myTextbox">
            <DomainRelationshipMoniker Name="ExampleModelHasMyTextbox" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myGauge">
            <DomainRelationshipMoniker Name="ExampleModelHasMyGauge" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyButton" MonikerAttributeName="name" SerializeId="true" MonikerElementName="myButtonMoniker" ElementName="myButton" MonikerTypeName="MyButtonMoniker">
        <DomainClassMoniker Name="MyButton" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="MyButton/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="text">
            <DomainPropertyMoniker Name="MyButton/Text" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="MyDslComponentsDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslComponentsDiagramMoniker" ElementName="myDslComponentsDiagram" MonikerTypeName="MyDslComponentsDiagramMoniker">
        <DiagramMoniker Name="MyDslComponentsDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasMyTextbox" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasMyTextboxMoniker" ElementName="exampleModelHasMyTextbox" MonikerTypeName="ExampleModelHasMyTextboxMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasMyTextbox" />
      </XmlClassData>
      <XmlClassData TypeName="MyTextbox" MonikerAttributeName="" SerializeId="true" MonikerElementName="myTextboxMoniker" ElementName="myTextbox" MonikerTypeName="MyTextboxMoniker">
        <DomainClassMoniker Name="MyTextbox" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyTextbox/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="text">
            <DomainPropertyMoniker Name="MyTextbox/Text" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasMyGauge" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasMyGaugeMoniker" ElementName="exampleModelHasMyGauge" MonikerTypeName="ExampleModelHasMyGaugeMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasMyGauge" />
      </XmlClassData>
      <XmlClassData TypeName="MyGauge" MonikerAttributeName="" SerializeId="true" MonikerElementName="myGaugeMoniker" ElementName="myGauge" MonikerTypeName="MyGaugeMoniker">
        <DomainClassMoniker Name="MyGauge" />
        <ElementData>
          <XmlPropertyData XmlName="rangeStart">
            <DomainPropertyMoniker Name="MyGauge/RangeStart" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="rangeEnd">
            <DomainPropertyMoniker Name="MyGauge/RangeEnd" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyGauge/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyComponent" MonikerAttributeName="" SerializeId="true" MonikerElementName="myComponentMoniker" ElementName="myComponent" MonikerTypeName="MyComponentMoniker">
        <DomainClassMoniker Name="MyComponent" />
      </XmlClassData>
      <XmlClassData TypeName="MyButtonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myButtonShapeMoniker" ElementName="myButtonShape" MonikerTypeName="MyButtonShapeMoniker">
        <ImageShapeMoniker Name="MyButtonShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyTextboxShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myTextboxShapeMoniker" ElementName="myTextboxShape" MonikerTypeName="MyTextboxShapeMoniker">
        <ImageShapeMoniker Name="MyTextboxShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyGaugeShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myGaugeShapeMoniker" ElementName="myGaugeShape" MonikerTypeName="MyGaugeShapeMoniker">
        <ImageShapeMoniker Name="MyGaugeShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslComponentsExplorer" />
  <Diagram Id="784f2278-41ee-4cd9-aa77-6008803f3a83" Description="Description for Company.MyDslComponents.MyDslComponentsDiagram" Name="MyDslComponentsDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslComponents">
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
          <TextDecoratorMoniker Name="MyButtonShape/NameDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyButton/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyButtonShape/TextDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyButton/Text" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="MyButtonShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MyTextbox" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasMyTextbox.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyTextboxShape/NameDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyTextbox/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyTextboxShape/TextDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyTextbox/Text" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="MyTextboxShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MyGauge" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasMyGauge.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyTextboxShape/NameDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyGauge/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyGaugeShape/RangeEndDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyGauge/RangeEnd" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyGaugeShape/RangeStartDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyGauge/RangeStart" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="MyGaugeShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslComponents" EditorGuid="76753c16-6eca-44c9-a1dc-72ec21a12449">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslComponentsSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslComponents">
      <ElementTool Name="MyButton" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyButton" Tooltip="My Button" HelpKeyword="MyButton">
        <DomainClassMoniker Name="MyButton" />
      </ElementTool>
      <ElementTool Name="MyTextbox" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyTextbox" Tooltip="My Textbox" HelpKeyword="MyTextbox">
        <DomainClassMoniker Name="MyTextbox" />
      </ElementTool>
      <ElementTool Name="MyGauge" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyGauge" Tooltip="My Gauge" HelpKeyword="MyGauge">
        <DomainClassMoniker Name="MyGauge" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslComponentsDiagram" />
  </Designer>
  <Explorer ExplorerGuid="01cc0083-dd8e-4398-994b-1596a875d49b" Title="MyDslComponents Explorer">
    <ExplorerBehaviorMoniker Name="MyDslComponents/MyDslComponentsExplorer" />
  </Explorer>
</Dsl>