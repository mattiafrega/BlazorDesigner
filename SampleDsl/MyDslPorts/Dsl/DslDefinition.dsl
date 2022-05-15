<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="dc5e28e4-d821-4303-83cb-76f16c27455d" Description="Description for Company.MyDslPorts.MyDslPorts" Name="MyDslPorts" DisplayName="MyDslPorts" Namespace="Company.MyDslPorts" ProductName="MyDslPorts" CompanyName="Company" PackageGuid="82abe8f5-e749-4235-80e6-de8c2202eec2" PackageNamespace="Company.MyDslPorts" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="f7646cfd-9622-4814-966e-7d28a9fb898b" Description="" Name="NamedElement" DisplayName="Named Element" InheritanceModifier="Abstract" Namespace="Company.MyDslPorts">
      <Properties>
        <DomainProperty Id="f951ddef-fbb9-4282-93a4-1e581064b297" Description="" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="73a5861e-6db9-4099-96e4-eafa87c22a8f" Description="" Name="ComponentModel" DisplayName="Component Model" Namespace="Company.MyDslPorts">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Comment" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ComponentModelHasComments.Comments</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Component" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ComponentModelHasComponents.Components</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="16cb16e8-7a56-478f-ac6a-b0eeac84fd76" Description="" Name="Component" DisplayName="Component" Namespace="Company.MyDslPorts">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="b31b8cc7-8cf0-473b-9a60-f90a66d71855" Description="" Name="Kind" DisplayName="Kind" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ComponentPort" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ComponentHasPorts.Ports</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="d5ee0f91-0e6e-450e-a767-ad48cf0c1552" Description="Description for Company.MyDslPorts.ComponentPort" Name="ComponentPort" DisplayName="Component Port" InheritanceModifier="Abstract" Namespace="Company.MyDslPorts">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="e3f53686-20da-45c5-9367-6e153e465383" Description="" Name="InPort" DisplayName="In Port" Namespace="Company.MyDslPorts">
      <BaseClass>
        <DomainClassMoniker Name="ComponentPort" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="05264538-2c05-42c1-98ab-6a28d624699d" Description="" Name="OutPort" DisplayName="Out Port" Namespace="Company.MyDslPorts">
      <BaseClass>
        <DomainClassMoniker Name="ComponentPort" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="8ac6f1a6-77be-4d25-aca8-3097360319ce" Description="" Name="Comment" DisplayName="Comment" Namespace="Company.MyDslPorts">
      <Properties>
        <DomainProperty Id="e44a201f-c951-4eba-a86a-eaf2637ee44d" Description="" Name="Text" DisplayName="Text" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="c5d5d773-9503-4d2e-afbb-9bdbe4396f38" Description="" Name="Connection" DisplayName="Connection" Namespace="Company.MyDslPorts">
      <Notes>The relationship between the output port of one component, and the input of another.</Notes>
      <Properties>
        <DomainProperty Id="06e44e73-d205-4812-b419-43f75f01e55d" Description="" Name="SourceRoleName" DisplayName="Source Role Name" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7aa4e0cc-1b9c-429e-8ded-1e95fbb1ec5f" Description="" Name="TargetRoleName" DisplayName="Target Role Name" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="5372e23f-e16a-45df-a3d0-207184d189eb" Description="" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="OutPort" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="26441ae6-1a74-4c5b-9a56-5bf7a23c9bd5" Description="" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="InPort" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0547658b-cf04-46a2-8feb-ac383f21f69d" Description="" Name="ComponentHasPorts" DisplayName="Component Has Ports" Namespace="Company.MyDslPorts" IsEmbedding="true">
      <Notes>The embedding between a Component and its InPorts and OutPorts.</Notes>
      <Source>
        <DomainRole Id="1ed75e8e-4c10-46ac-afef-c3aa1f9df54b" Description="" Name="Component" DisplayName="Component" PropertyName="Ports" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Ports">
          <RolePlayer>
            <DomainClassMoniker Name="Component" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="1b28de45-6b82-48e2-810d-ec1add716e61" Description="" Name="Port" DisplayName="Port" PropertyName="Component" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Component">
          <RolePlayer>
            <DomainClassMoniker Name="ComponentPort" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0ac1c06a-4682-497f-9ba4-7ecfca8a5da3" Description="" Name="ComponentModelHasComments" DisplayName="Component Model Has Comments" Namespace="Company.MyDslPorts" IsEmbedding="true">
      <Source>
        <DomainRole Id="44a55fe6-8a68-41c7-9277-84c5f22ac8bb" Description="" Name="ComponentModel" DisplayName="Component Model" PropertyName="Comments" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Comments">
          <RolePlayer>
            <DomainClassMoniker Name="ComponentModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="0f9eb3aa-03c5-4ec2-8fbd-97c4f885cb52" Description="" Name="Comment" DisplayName="Comment" PropertyName="ComponentModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Component Model">
          <RolePlayer>
            <DomainClassMoniker Name="Comment" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f50d2356-5faf-4d4e-aa25-834db94547fd" Description="" Name="ComponentModelHasComponents" DisplayName="ComponentModelHasComponents" Namespace="Company.MyDslPorts" IsEmbedding="true">
      <Source>
        <DomainRole Id="cc458b45-5da0-4257-9982-decfc94121f4" Description="" Name="ComponentModel" DisplayName="Component Model" PropertyName="Components" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Components">
          <RolePlayer>
            <DomainClassMoniker Name="ComponentModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a2d470ef-81c8-487e-a1c3-2a190b24af2f" Description="" Name="Component" DisplayName="Component" PropertyName="ComponentModel" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Component Model">
          <RolePlayer>
            <DomainClassMoniker Name="Component" />
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
    <Port Id="b2cc7da2-158b-45f5-aa5f-a3ac1c5f4fd2" Description="Description for Company.MyDslPorts.InPortShape" Name="InPortShape" DisplayName="In Port Shape" Namespace="Company.MyDslPorts" FixedTooltipText="In Port Shape" InitialWidth="0.2" InitialHeight="0.2" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="Image" DisplayName="Image" DefaultIcon="Resources\InPortImage.bmp" />
      </ShapeHasDecorators>
    </Port>
    <Port Id="b9f2e13f-7a50-4f48-992b-a2541322bac6" Description="Description for Company.MyDslPorts.OutPortShape" Name="OutPortShape" DisplayName="Out Port Shape" Namespace="Company.MyDslPorts" FixedTooltipText="Out Port Shape" InitialWidth="0.2" InitialHeight="0.2" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="Image" DisplayName="Image" DefaultIcon="Resources\OutPortImage.bmp" />
      </ShapeHasDecorators>
    </Port>
    <GeometryShape Id="b0ff8d57-150b-42cf-b5ba-0aaaa9556b50" Description="" Name="ComponentShape" DisplayName="Component Shape" Namespace="Company.MyDslPorts" FixedTooltipText="Component Shape" FillColor="227, 226, 231" OutlineColor="113, 111, 110" InitialHeight="0.5" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="EntityShapeNameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="bb64a57d-b620-44a3-8343-f99490ff0d75" Description="" Name="CommentBoxShape" DisplayName="Comment Box Shape" Namespace="Company.MyDslPorts" FixedTooltipText="Comment Box Shape" FillColor="255, 255, 204" OutlineColor="204, 204, 102" InitialHeight="0.3" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Comment" DisplayName="Comment" DefaultText="" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="0aa64ec7-83ba-45c8-a186-cd10b7adeb2e" Description="" Name="AssociationLink" DisplayName="Association Link" Namespace="Company.MyDslPorts" FixedTooltipText="Association Link" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="TargetRoleName" DisplayName="Target Role Name" DefaultText="TargetRoleName" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="SourceRoleName" DisplayName="Source Role Name" DefaultText="SourceRoleName" />
      </ConnectorHasDecorators>
    </Connector>
  </Connectors>
  <XmlSerializationBehavior Name="ComponentsSerializationBehavior" Namespace="Company.MyDslPorts">
    <ClassData>
      <XmlClassData TypeName="NamedElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="namedElementMoniker" ElementName="namedElement" MonikerTypeName="NamedElementMoniker">
        <DomainClassMoniker Name="NamedElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="NamedElement/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="OutPort" MonikerAttributeName="" SerializeId="true" MonikerElementName="outPortMoniker" ElementName="outPort" MonikerTypeName="OutPortMoniker">
        <DomainClassMoniker Name="OutPort" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targets">
            <DomainRelationshipMoniker Name="Connection" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ComponentModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="componentModelMoniker" ElementName="componentModel" MonikerTypeName="ComponentModelMoniker">
        <DomainClassMoniker Name="ComponentModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="comments">
            <DomainRelationshipMoniker Name="ComponentModelHasComments" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="components">
            <DomainRelationshipMoniker Name="ComponentModelHasComponents" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Component" MonikerAttributeName="" SerializeId="true" MonikerElementName="componentMoniker" ElementName="component" MonikerTypeName="ComponentMoniker">
        <DomainClassMoniker Name="Component" />
        <ElementData>
          <XmlPropertyData XmlName="kind">
            <DomainPropertyMoniker Name="Component/Kind" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="ports">
            <DomainRelationshipMoniker Name="ComponentHasPorts" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ComponentPort" MonikerAttributeName="" SerializeId="true" MonikerElementName="componentPortMoniker" ElementName="componentPort" MonikerTypeName="ComponentPortMoniker">
        <DomainClassMoniker Name="ComponentPort" />
      </XmlClassData>
      <XmlClassData TypeName="InPort" MonikerAttributeName="" SerializeId="true" MonikerElementName="inPortMoniker" ElementName="inPort" MonikerTypeName="InPortMoniker">
        <DomainClassMoniker Name="InPort" />
      </XmlClassData>
      <XmlClassData TypeName="Comment" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentMoniker" ElementName="comment" MonikerTypeName="CommentMoniker">
        <DomainClassMoniker Name="Comment" />
        <ElementData>
          <XmlPropertyData XmlName="text">
            <DomainPropertyMoniker Name="Comment/Text" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Connection" MonikerAttributeName="" SerializeId="true" MonikerElementName="connectionMoniker" ElementName="connection" MonikerTypeName="ConnectionMoniker">
        <DomainRelationshipMoniker Name="Connection" />
        <ElementData>
          <XmlPropertyData XmlName="sourceRoleName">
            <DomainPropertyMoniker Name="Connection/SourceRoleName" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="targetRoleName">
            <DomainPropertyMoniker Name="Connection/TargetRoleName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ComponentHasPorts" MonikerAttributeName="" SerializeId="true" MonikerElementName="componentHasPortsMoniker" ElementName="componentHasPorts" MonikerTypeName="ComponentHasPortsMoniker">
        <DomainRelationshipMoniker Name="ComponentHasPorts" />
      </XmlClassData>
      <XmlClassData TypeName="ComponentModelHasComments" MonikerAttributeName="" SerializeId="true" MonikerElementName="componentModelHasCommentsMoniker" ElementName="componentModelHasComments" MonikerTypeName="ComponentModelHasCommentsMoniker">
        <DomainRelationshipMoniker Name="ComponentModelHasComments" />
      </XmlClassData>
      <XmlClassData TypeName="ComponentModelHasComponents" MonikerAttributeName="" SerializeId="true" MonikerElementName="componentModelHasComponentsMoniker" ElementName="componentModelHasComponents" MonikerTypeName="ComponentModelHasComponentsMoniker">
        <DomainRelationshipMoniker Name="ComponentModelHasComponents" />
      </XmlClassData>
      <XmlClassData TypeName="InPortShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="inPortShapeMoniker" ElementName="inPortShape" MonikerTypeName="InPortShapeMoniker">
        <PortMoniker Name="InPortShape" />
      </XmlClassData>
      <XmlClassData TypeName="OutPortShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="outPortShapeMoniker" ElementName="outPortShape" MonikerTypeName="OutPortShapeMoniker">
        <PortMoniker Name="OutPortShape" />
      </XmlClassData>
      <XmlClassData TypeName="ComponentShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="componentShapeMoniker" ElementName="componentShape" MonikerTypeName="ComponentShapeMoniker">
        <GeometryShapeMoniker Name="ComponentShape" />
      </XmlClassData>
      <XmlClassData TypeName="CommentBoxShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentBoxShapeMoniker" ElementName="commentBoxShape" MonikerTypeName="CommentBoxShapeMoniker">
        <GeometryShapeMoniker Name="CommentBoxShape" />
      </XmlClassData>
      <XmlClassData TypeName="AssociationLink" MonikerAttributeName="" SerializeId="true" MonikerElementName="associationLinkMoniker" ElementName="associationLink" MonikerTypeName="AssociationLinkMoniker">
        <ConnectorMoniker Name="AssociationLink" />
      </XmlClassData>
      <XmlClassData TypeName="MyDslPortsDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslPortsDiagramMoniker" ElementName="myDslPortsDiagram" MonikerTypeName="MyDslPortsDiagramMoniker">
        <DiagramMoniker Name="MyDslPortsDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="ComponentExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="ConnectionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Connection" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="OutPort" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="InPort" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="ba21ac5d-288f-4ca3-b160-6df4f189df17" Description="" Name="MyDslPortsDiagram" DisplayName="MyDslPorts Diagram" Namespace="Company.MyDslPorts">
    <Class>
      <DomainClassMoniker Name="ComponentModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="InPort" />
        <ParentElementPath>
          <DomainPath>ComponentHasPorts.Component/!Component</DomainPath>
        </ParentElementPath>
        <PortMoniker Name="InPortShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="OutPort" />
        <ParentElementPath>
          <DomainPath>ComponentHasPorts.Component/!Component</DomainPath>
        </ParentElementPath>
        <PortMoniker Name="OutPortShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Component" />
        <ParentElementPath>
          <DomainPath>ComponentModelHasComponents.ComponentModel/!ComponentModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ComponentShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ComponentShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Comment" />
        <ParentElementPath>
          <DomainPath>ComponentModelHasComments.ComponentModel/!ComponentModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CommentBoxShape/Comment" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Comment/Text" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CommentBoxShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="AssociationLink" />
        <DomainRelationshipMoniker Name="Connection" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationLink/SourceRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Connection/SourceRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationLink/TargetRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Connection/TargetRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslPorts" EditorGuid="e1ba2f50-9bce-4f79-bf5f-8d4077ab6e4b">
    <RootClass>
      <DomainClassMoniker Name="ComponentModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="ComponentsSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslPorts">
      <ElementTool Name="Component" ToolboxIcon="Resources\ComponentTool.bmp" Caption="Component" Tooltip="Create a Component" HelpKeyword="CreateComponentF1Keyword">
        <DomainClassMoniker Name="Component" />
      </ElementTool>
      <ElementTool Name="InPort" ToolboxIcon="Resources\InPortTool.bmp" Caption="Input Port" Tooltip="Add an Input Port to a Component." HelpKeyword="CreateInPortF1Keyword">
        <DomainClassMoniker Name="InPort" />
      </ElementTool>
      <ElementTool Name="OutPort" ToolboxIcon="Resources\OutPortTool.bmp" Caption="Output Port" Tooltip="Add an Output Port to a Component." HelpKeyword="CreateOutPortF1Keyword">
        <DomainClassMoniker Name="OutPort" />
      </ElementTool>
      <ConnectionTool Name="Connection" ToolboxIcon="Resources\ConnectionTool.bmp" Caption="Connection" Tooltip="Connect an Output Port to an Input Port." HelpKeyword="ConnectAssociationF1Keyword">
        <ConnectionBuilderMoniker Name="MyDslPorts/ConnectionBuilder" />
      </ConnectionTool>
      <ElementTool Name="Comment" ToolboxIcon="resources\CommentTool.bmp" Caption="Comment" Tooltip="Create a Comment" HelpKeyword="ConnectCommentF1Keyword">
        <DomainClassMoniker Name="Comment" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslPortsDiagram" />
  </Designer>
  <Explorer ExplorerGuid="d76344e0-77b5-4fd0-8375-36f35c2242b0" Title="">
    <ExplorerBehaviorMoniker Name="MyDslPorts/ComponentExplorer" />
  </Explorer>
</Dsl>