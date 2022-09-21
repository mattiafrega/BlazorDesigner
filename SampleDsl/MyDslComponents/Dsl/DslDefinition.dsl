<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="38476d44-74a2-4891-bdf5-b5d2b9c42dcb" Description="Description for Company.MyDslComponents.MyDslComponents" Name="MyDslComponents" DisplayName="MyDslComponents" Namespace="Company.MyDslComponents" ProductName="MyDslComponents" CompanyName="Company" PackageGuid="8bf03763-7a37-44f3-8516-11ef3578ac6f" PackageNamespace="Company.MyDslComponents" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="d0496c9f-ce81-4d80-8eea-fd8d9e5b8006" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ITxModel" DisplayName="ITx Model" Namespace="Company.MyDslComponents">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ITxComponent" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ITxModelHasITxComponent.ITxComponent</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="5fa966a9-84fb-467e-9189-06278eaecfba" Description="Description for Company.MyDslComponents.ITxComponent" Name="ITxComponent" DisplayName="ITx Component" InheritanceModifier="Abstract" Namespace="Company.MyDslComponents">
      <Properties>
        <DomainProperty Id="777a72ba-9429-4f9f-8d75-851dd6ca7707" Description="Description for Company.MyDslComponents.ITxComponent.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="216871ad-163e-4f6f-9826-66287ae3c1fe" Description="Description for Company.MyDslComponents.ITxView" Name="ITxView" DisplayName="ITx View" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="ITxContainer" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="61874ad0-26d4-4ae7-a3e0-7c4b246424a0" Description="Description for Company.MyDslComponents.ITxPanel" Name="ITxPanel" DisplayName="ITx Panel" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="ITxContainer" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="75c7370e-5033-4389-a6ef-a365805c18c9" Description="Description for Company.MyDslComponents.ITxContainer" Name="ITxContainer" DisplayName="ITx Container" InheritanceModifier="Abstract" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="ITxComponent" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ITxComponent" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ITxContainerHasITxComponent.ITxComponent</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="748d96cf-6a07-410d-a1a3-4cfe2df90e70" Description="Description for Company.MyDslComponents.ITxTextbox" Name="ITxTextbox" DisplayName="ITx Textbox" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="ITxComponent" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="f1bc70fb-f5b9-4ae3-a05c-90a0b521eb6c" Description="Description for Company.MyDslComponents.ITxTextbox.Text" Name="Text" DisplayName="Text">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="d6080ae1-53c4-4fd1-b702-13d59675d06d" Description="Description for Company.MyDslComponents.ITxButton" Name="ITxButton" DisplayName="ITx Button" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="ITxComponent" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="90c7c4a2-dfb8-45a4-8585-4d12b7572044" Description="Description for Company.MyDslComponents.ITxButton.Text" Name="Text" DisplayName="Text">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="5f9765f2-2c0c-4cf6-8a39-47e770baab96" Description="Description for Company.MyDslComponents.ITxGauge" Name="ITxGauge" DisplayName="ITx Gauge" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="ITxComponent" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="541f6787-5773-45c1-b138-1cd03234803e" Description="Description for Company.MyDslComponents.FetchData" Name="FetchData" DisplayName="Fetch Data" Namespace="Company.MyDslComponents">
      <BaseClass>
        <DomainClassMoniker Name="ITxComponent" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="c949fabb-8e5e-43a9-9ccc-7374401c4628" Description="Description for Company.MyDslComponents.ITxModelHasITxComponent" Name="ITxModelHasITxComponent" DisplayName="ITx Model Has ITx Component" Namespace="Company.MyDslComponents" IsEmbedding="true">
      <Source>
        <DomainRole Id="74e74376-6693-480d-8fd9-4ea6a2658b9b" Description="Description for Company.MyDslComponents.ITxModelHasITxComponent.ITxModel" Name="ITxModel" DisplayName="ITx Model" PropertyName="ITxComponent" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="ITx Component">
          <RolePlayer>
            <DomainClassMoniker Name="ITxModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5f9e1926-1be8-493e-a3f5-2ce85797416b" Description="Description for Company.MyDslComponents.ITxModelHasITxComponent.ITxComponent" Name="ITxComponent" DisplayName="ITx Component" PropertyName="ITxModel" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="ITx Model">
          <RolePlayer>
            <DomainClassMoniker Name="ITxComponent" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="6bf93da7-f403-43e7-8be3-17201722f99e" Description="Description for Company.MyDslComponents.ITxContainerHasITxComponent" Name="ITxContainerHasITxComponent" DisplayName="ITx Container Has ITx Component" Namespace="Company.MyDslComponents" IsEmbedding="true">
      <Source>
        <DomainRole Id="49f0e289-5b4e-4993-b1bd-f84dfcbd0d16" Description="Description for Company.MyDslComponents.ITxContainerHasITxComponent.ITxContainer" Name="ITxContainer" DisplayName="ITx Container" PropertyName="ITxComponent" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="ITx Component">
          <RolePlayer>
            <DomainClassMoniker Name="ITxContainer" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="09471b21-df0e-4c68-b008-e03fa0cd4521" Description="Description for Company.MyDslComponents.ITxContainerHasITxComponent.ITxComponent" Name="ITxComponent" DisplayName="ITx Component" PropertyName="ITxContainer" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="ITx Container">
          <RolePlayer>
            <DomainClassMoniker Name="ITxComponent" />
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
  </Types>
  <Shapes>
    <ImageShape Id="47936b8a-6c27-4c0c-ab70-86418e93fe42" Description="Description for Company.MyDslComponents.BaseShape" Name="BaseShape" DisplayName="Base Shape" InheritanceModifier="Abstract" Namespace="Company.MyDslComponents" FixedTooltipText="Base Shape" InitialHeight="1" Image="Resources\textboxImage.png">
      <Properties>
        <DomainProperty Id="e285f9fe-4e75-4323-88e5-be739dc3e601" Description="Description for Company.MyDslComponents.BaseShape.Width" Name="Width" DisplayName="Width" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c1f5b2b7-eb5e-4833-904f-a9f50f2a25c7" Description="Description for Company.MyDslComponents.BaseShape.Height" Name="Height" DisplayName="Height" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1582776e-78c8-4993-96e8-643689d5b67b" Description="Description for Company.MyDslComponents.BaseShape.X" Name="X" DisplayName="X" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7dbaa66b-7bd7-4b5b-8121-327c1e74dccb" Description="Description for Company.MyDslComponents.BaseShape.Y" Name="Y" DisplayName="Y" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
      </Properties>
    </ImageShape>
    <ImageShape Id="230a469f-b8c6-40d5-b97c-8217e3d43e16" Description="Description for Company.MyDslComponents.ITxViewShape" Name="ITxViewShape" DisplayName="ITx View Shape" Namespace="Company.MyDslComponents" FixedTooltipText="ITx View Shape" InitialHeight="1" Image="Resources\viewImage.png">
      <BaseImageShape>
        <ImageShapeMoniker Name="BaseShape" />
      </BaseImageShape>
    </ImageShape>
    <ImageShape Id="c4d822ec-9533-4f52-8b0e-b255ba024615" Description="Description for Company.MyDslComponents.ITxPanelShape" Name="ITxPanelShape" DisplayName="ITx Panel Shape" Namespace="Company.MyDslComponents" FixedTooltipText="ITx Panel Shape" InitialHeight="1" Image="Resources\panelnew.png">
      <BaseImageShape>
        <ImageShapeMoniker Name="BaseShape" />
      </BaseImageShape>
    </ImageShape>
    <ImageShape Id="e975b6bb-b5b8-4fde-a748-fb602ba9f54c" Description="Description for Company.MyDslComponents.ITxTextboxShape" Name="ITxTextboxShape" DisplayName="ITx Textbox Shape" Namespace="Company.MyDslComponents" FixedTooltipText="ITx Textbox Shape" InitialWidth="4" InitialHeight="1" Image="Resources\textboxImage.png">
      <BaseImageShape>
        <ImageShapeMoniker Name="BaseShape" />
      </BaseImageShape>
      <ShapeHasDecorators Position="InnerMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TextDecor" DisplayName="Text Decor" DefaultText="TextDecor" FontSize="12" />
      </ShapeHasDecorators>
    </ImageShape>
    <ImageShape Id="4016431d-6562-4885-b497-ce39b63a7320" Description="Description for Company.MyDslComponents.ITxButtonShape" Name="ITxButtonShape" DisplayName="ITx Button Shape" Namespace="Company.MyDslComponents" FixedTooltipText="ITx Button Shape" TextColor="White" InitialWidth="2" InitialHeight="1" Image="Resources\buttonImage.png">
      <BaseImageShape>
        <ImageShapeMoniker Name="BaseShape" />
      </BaseImageShape>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TextDecor" DisplayName="Text Decor" DefaultText="TextDecor" FontStyle="Bold" FontSize="14" />
      </ShapeHasDecorators>
    </ImageShape>
    <ImageShape Id="6d711054-bfd0-4968-84eb-6efc84794653" Description="Description for Company.MyDslComponents.ITxGaugeShape" Name="ITxGaugeShape" DisplayName="ITx Gauge Shape" Namespace="Company.MyDslComponents" FixedTooltipText="ITx Gauge Shape" InitialWidth="1" InitialHeight="1" Image="Resources\gaugeImage.png">
      <BaseImageShape>
        <ImageShapeMoniker Name="BaseShape" />
      </BaseImageShape>
    </ImageShape>
    <ImageShape Id="90b33ce3-ec0a-42c0-9839-bca0a4258724" Description="Description for Company.MyDslComponents.FetchDataShape" Name="FetchDataShape" DisplayName="Fetch Data Shape" Namespace="Company.MyDslComponents" FixedTooltipText="Fetch Data Shape" InitialHeight="1" Image="Resources\tableImage.png">
      <BaseImageShape>
        <ImageShapeMoniker Name="BaseShape" />
      </BaseImageShape>
    </ImageShape>
    <ImageShape Id="8979f075-3442-48c6-83e1-4d4bce445ea7" Description="Description for Company.MyDslComponents.CounterShape" Name="CounterShape" DisplayName="Counter Shape" Namespace="Company.MyDslComponents" FixedTooltipText="Counter Shape" InitialHeight="1" Image="Resources\counterImage.png" />
    <ImageShape Id="fb1a9574-2934-4fa2-9fd3-d97d0ba00bab" Description="Description for Company.MyDslComponents.SurveryPromptShape" Name="SurveryPromptShape" DisplayName="Survery Prompt Shape" Namespace="Company.MyDslComponents" FixedTooltipText="Survery Prompt Shape" InitialHeight="1" Image="Resources\alertImage.png">
      <ShapeHasDecorators Position="InnerMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TextDecorator1" DisplayName="Text Decorator1" DefaultText="TextDecorator1" FontSize="12" />
      </ShapeHasDecorators>
    </ImageShape>
    <ImageShape Id="eee0d11e-aad7-4c02-ae83-3364db6344f7" Description="Description for Company.MyDslComponents.InputTypeTextShape" Name="InputTypeTextShape" DisplayName="Input Type Text Shape" Namespace="Company.MyDslComponents" FixedTooltipText="Input Type Text Shape" InitialHeight="1" Image="Resources\textboxImage.png">
      <ShapeHasDecorators Position="InnerMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TextDecorator1" DisplayName="Text Decorator1" DefaultText="TextDecorator1" FontStyle="Bold" FontSize="12" />
      </ShapeHasDecorators>
    </ImageShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslComponentsSerializationBehavior" Namespace="Company.MyDslComponents">
    <ClassData>
      <XmlClassData TypeName="ITxModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxModelMoniker" ElementName="iTxModel" MonikerTypeName="ITxModelMoniker">
        <DomainClassMoniker Name="ITxModel" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="iTxComponent">
            <DomainRelationshipMoniker Name="ITxModelHasITxComponent" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyDslComponentsDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslComponentsDiagramMoniker" ElementName="myDslComponentsDiagram" MonikerTypeName="MyDslComponentsDiagramMoniker">
        <DiagramMoniker Name="MyDslComponentsDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="ITxComponent" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxComponentMoniker" ElementName="iTxComponent" MonikerTypeName="ITxComponentMoniker">
        <DomainClassMoniker Name="ITxComponent" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="ITxComponent/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ITxView" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxViewMoniker" ElementName="iTxView" MonikerTypeName="ITxViewMoniker">
        <DomainClassMoniker Name="ITxView" />
      </XmlClassData>
      <XmlClassData TypeName="ITxPanel" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxPanelMoniker" ElementName="iTxPanel" MonikerTypeName="ITxPanelMoniker">
        <DomainClassMoniker Name="ITxPanel" />
      </XmlClassData>
      <XmlClassData TypeName="BaseShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="baseShapeMoniker" ElementName="baseShape" MonikerTypeName="BaseShapeMoniker">
        <ImageShapeMoniker Name="BaseShape" />
        <ElementData>
          <XmlPropertyData XmlName="width" Representation="Ignore">
            <DomainPropertyMoniker Name="BaseShape/Width" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="height" Representation="Ignore">
            <DomainPropertyMoniker Name="BaseShape/Height" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="x" Representation="Ignore">
            <DomainPropertyMoniker Name="BaseShape/X" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="y" Representation="Ignore">
            <DomainPropertyMoniker Name="BaseShape/Y" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ITxViewShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxViewShapeMoniker" ElementName="iTxViewShape" MonikerTypeName="ITxViewShapeMoniker">
        <ImageShapeMoniker Name="ITxViewShape" />
      </XmlClassData>
      <XmlClassData TypeName="ITxPanelShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxPanelShapeMoniker" ElementName="iTxPanelShape" MonikerTypeName="ITxPanelShapeMoniker">
        <ImageShapeMoniker Name="ITxPanelShape" />
      </XmlClassData>
      <XmlClassData TypeName="ITxContainer" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxContainerMoniker" ElementName="iTxContainer" MonikerTypeName="ITxContainerMoniker">
        <DomainClassMoniker Name="ITxContainer" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="iTxComponent">
            <DomainRelationshipMoniker Name="ITxContainerHasITxComponent" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ITxTextbox" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxTextboxMoniker" ElementName="iTxTextbox" MonikerTypeName="ITxTextboxMoniker">
        <DomainClassMoniker Name="ITxTextbox" />
        <ElementData>
          <XmlPropertyData XmlName="text">
            <DomainPropertyMoniker Name="ITxTextbox/Text" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ITxButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxButtonMoniker" ElementName="iTxButton" MonikerTypeName="ITxButtonMoniker">
        <DomainClassMoniker Name="ITxButton" />
        <ElementData>
          <XmlPropertyData XmlName="text">
            <DomainPropertyMoniker Name="ITxButton/Text" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ITxGauge" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxGaugeMoniker" ElementName="iTxGauge" MonikerTypeName="ITxGaugeMoniker">
        <DomainClassMoniker Name="ITxGauge" />
      </XmlClassData>
      <XmlClassData TypeName="ITxTextboxShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxTextboxShapeMoniker" ElementName="iTxTextboxShape" MonikerTypeName="ITxTextboxShapeMoniker">
        <ImageShapeMoniker Name="ITxTextboxShape" />
      </XmlClassData>
      <XmlClassData TypeName="ITxButtonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxButtonShapeMoniker" ElementName="iTxButtonShape" MonikerTypeName="ITxButtonShapeMoniker">
        <ImageShapeMoniker Name="ITxButtonShape" />
      </XmlClassData>
      <XmlClassData TypeName="ITxGaugeShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxGaugeShapeMoniker" ElementName="iTxGaugeShape" MonikerTypeName="ITxGaugeShapeMoniker">
        <ImageShapeMoniker Name="ITxGaugeShape" />
      </XmlClassData>
      <XmlClassData TypeName="ITxModelHasITxComponent" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxModelHasITxComponentMoniker" ElementName="iTxModelHasITxComponent" MonikerTypeName="ITxModelHasITxComponentMoniker">
        <DomainRelationshipMoniker Name="ITxModelHasITxComponent" />
      </XmlClassData>
      <XmlClassData TypeName="ITxContainerHasITxComponent" MonikerAttributeName="" SerializeId="true" MonikerElementName="iTxContainerHasITxComponentMoniker" ElementName="iTxContainerHasITxComponent" MonikerTypeName="ITxContainerHasITxComponentMoniker">
        <DomainRelationshipMoniker Name="ITxContainerHasITxComponent" />
      </XmlClassData>
      <XmlClassData TypeName="FetchDataShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="fetchDataShapeMoniker" ElementName="fetchDataShape" MonikerTypeName="FetchDataShapeMoniker">
        <ImageShapeMoniker Name="FetchDataShape" />
      </XmlClassData>
      <XmlClassData TypeName="CounterShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="counterShapeMoniker" ElementName="counterShape" MonikerTypeName="CounterShapeMoniker">
        <ImageShapeMoniker Name="CounterShape" />
      </XmlClassData>
      <XmlClassData TypeName="SurveryPromptShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="surveryPromptShapeMoniker" ElementName="surveryPromptShape" MonikerTypeName="SurveryPromptShapeMoniker">
        <ImageShapeMoniker Name="SurveryPromptShape" />
      </XmlClassData>
      <XmlClassData TypeName="InputTypeTextShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="inputTypeTextShapeMoniker" ElementName="inputTypeTextShape" MonikerTypeName="InputTypeTextShapeMoniker">
        <ImageShapeMoniker Name="InputTypeTextShape" />
      </XmlClassData>
      <XmlClassData TypeName="FetchData" MonikerAttributeName="" SerializeId="true" MonikerElementName="fetchDataMoniker" ElementName="fetchData" MonikerTypeName="FetchDataMoniker">
        <DomainClassMoniker Name="FetchData" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslComponentsExplorer" />
  <Diagram Id="784f2278-41ee-4cd9-aa77-6008803f3a83" Description="Description for Company.MyDslComponents.MyDslComponentsDiagram" Name="MyDslComponentsDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslComponents">
    <Class>
      <DomainClassMoniker Name="ITxModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="ITxPanel" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <ImageShapeMoniker Name="ITxPanelShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="ITxTextbox" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ITxTextboxShape/TextDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ITxTextbox/Text" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="ITxTextboxShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="ITxView" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <ImageShapeMoniker Name="ITxViewShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="ITxGauge" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <ImageShapeMoniker Name="ITxGaugeShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="ITxButton" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ITxButtonShape/TextDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ITxButton/Text" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="ITxButtonShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="FetchData" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <ImageShapeMoniker Name="FetchDataShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslComponents" EditorGuid="76753c16-6eca-44c9-a1dc-72ec21a12449">
    <RootClass>
      <DomainClassMoniker Name="ITxModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslComponentsSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslComponents">
      <ElementTool Name="ITxView" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="ITxView" Tooltip="ITx View" HelpKeyword="ITxView">
        <DomainClassMoniker Name="ITxView" />
      </ElementTool>
      <ElementTool Name="ITxPanel" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="ITxPanel" Tooltip="ITx Panel" HelpKeyword="ITxPanel">
        <DomainClassMoniker Name="ITxPanel" />
      </ElementTool>
      <ElementTool Name="ITxButton" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="ITxButton" Tooltip="ITx Button" HelpKeyword="ITxButton">
        <DomainClassMoniker Name="ITxButton" />
      </ElementTool>
      <ElementTool Name="ITxGauge" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="ITxGauge" Tooltip="ITx Gauge" HelpKeyword="ITxGauge">
        <DomainClassMoniker Name="ITxGauge" />
      </ElementTool>
      <ElementTool Name="ITxTextbox" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="ITxTextbox" Tooltip="ITx Textbox" HelpKeyword="ITxTextbox">
        <DomainClassMoniker Name="ITxTextbox" />
      </ElementTool>
      <ElementTool Name="FetchData" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="FetchData" Tooltip="Fetch Data" HelpKeyword="FetchData">
        <DomainClassMoniker Name="FetchData" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslComponentsDiagram" />
  </Designer>
  <Explorer ExplorerGuid="01cc0083-dd8e-4398-994b-1596a875d49b" Title="MyDslComponents Explorer">
    <ExplorerBehaviorMoniker Name="MyDslComponents/MyDslComponentsExplorer" />
  </Explorer>
</Dsl>