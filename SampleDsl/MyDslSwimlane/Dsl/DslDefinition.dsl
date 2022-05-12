<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="62f38c84-005c-4759-a2c1-53c87b68e9e6" Description="Description for Company.MyDslSwimlane.MyDslSwimlane" Name="MyDslSwimlane" DisplayName="MyDslSwimlane" Namespace="Company.MyDslSwimlane" ProductName="MyDslSwimlane" CompanyName="Company" PackageGuid="37390659-abd3-4e56-85de-a6ad827c2ae4" PackageNamespace="Company.MyDslSwimlane" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="89e8a571-df3e-496d-a12f-da2f878858f7" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslSwimlane">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="MySwimLane" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasMySwimLane.MySwimLane</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="084952cb-114d-4833-9986-fbbaf8efdbdd" Description="Description for Company.MyDslSwimlane.MySwimLane" Name="MySwimLane" DisplayName="My Swim Lane" Namespace="Company.MyDslSwimlane">
      <Properties>
        <DomainProperty Id="9b95f346-758f-4199-87a0-69a9fa590459" Description="Description for Company.MyDslSwimlane.MySwimLane.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="MyButton" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>MySwimLaneHasMyButton.MyButton</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="94de8afc-f029-422d-89b1-7f4efc15b526" Description="Description for Company.MyDslSwimlane.MyButton" Name="MyButton" DisplayName="My Button" Namespace="Company.MyDslSwimlane">
      <Properties>
        <DomainProperty Id="3f15423e-9d03-4e22-acb4-5a4d879e66aa" Description="Description for Company.MyDslSwimlane.MyButton.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="26ea4e41-01ad-44c3-b3a1-dca06e2b6e77" Description="Description for Company.MyDslSwimlane.MyButton.My Property" Name="MyProperty" DisplayName="My Property">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="763e173f-9b80-4a79-a06b-13fc02af6b9d" Description="Description for Company.MyDslSwimlane.ExampleModelHasMySwimLane" Name="ExampleModelHasMySwimLane" DisplayName="Example Model Has My Swim Lane" Namespace="Company.MyDslSwimlane" IsEmbedding="true">
      <Source>
        <DomainRole Id="061ede82-f563-4925-9dd0-043bd2773efe" Description="Description for Company.MyDslSwimlane.ExampleModelHasMySwimLane.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="MySwimLane" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="My Swim Lane">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="73eb1667-415b-49d5-a109-b801e5290459" Description="Description for Company.MyDslSwimlane.ExampleModelHasMySwimLane.MySwimLane" Name="MySwimLane" DisplayName="My Swim Lane" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MySwimLane" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d9e0d97c-6a0f-4242-b266-ddd7e4f22d38" Description="Description for Company.MyDslSwimlane.MySwimLaneHasMyButton" Name="MySwimLaneHasMyButton" DisplayName="My Swim Lane Has My Button" Namespace="Company.MyDslSwimlane" IsEmbedding="true">
      <Source>
        <DomainRole Id="92d9ec0b-4218-43d3-b948-d52db5ccc739" Description="Description for Company.MyDslSwimlane.MySwimLaneHasMyButton.MySwimLane" Name="MySwimLane" DisplayName="My Swim Lane" PropertyName="MyButton" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="My Button">
          <RolePlayer>
            <DomainClassMoniker Name="MySwimLane" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="49f258bc-ff33-4452-8b52-a33ea93e4fb6" Description="Description for Company.MyDslSwimlane.MySwimLaneHasMyButton.MyButton" Name="MyButton" DisplayName="My Button" PropertyName="MySwimLane" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="My Swim Lane">
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
    <SwimLane Id="cff84f26-cb22-4b1f-a293-1805bb440063" Description="Description for Company.MyDslSwimlane.SwimLane1" Name="SwimLane1" DisplayName="Swim Lane1" Namespace="Company.MyDslSwimlane" FixedTooltipText="Swim Lane1" InitialWidth="2" InitialHeight="0">
      <Decorators>
        <SwimLaneHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
          <TextDecorator Name="NameDecor" DisplayName="Name Decor" DefaultText="NameDecor" />
        </SwimLaneHasDecorators>
      </Decorators>
    </SwimLane>
    <GeometryShape Id="0d224457-2d55-4b9e-881f-5c9c32547f80" Description="Description for Company.MyDslSwimlane.MyButtonShape" Name="MyButtonShape" DisplayName="My Button Shape" Namespace="Company.MyDslSwimlane" FixedTooltipText="My Button Shape" FillColor="Gold" InitialHeight="1" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="OuterTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecor" DisplayName="Name Decor" DefaultText="NameDecor" FontStyle="Bold, Italic, Underline" FontSize="12" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="MyPropertyDecor" DisplayName="My Property Decor" DefaultText="MyPropertyDecor" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslSwimlaneSerializationBehavior" Namespace="Company.MyDslSwimlane">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="mySwimLane">
            <DomainRelationshipMoniker Name="ExampleModelHasMySwimLane" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyDslSwimlaneDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslSwimlaneDiagramMoniker" ElementName="myDslSwimlaneDiagram" MonikerTypeName="MyDslSwimlaneDiagramMoniker">
        <DiagramMoniker Name="MyDslSwimlaneDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="SwimLane1" MonikerAttributeName="" SerializeId="true" MonikerElementName="swimLane1Moniker" ElementName="swimLane1" MonikerTypeName="SwimLane1Moniker">
        <SwimLaneMoniker Name="SwimLane1" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasMySwimLane" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasMySwimLaneMoniker" ElementName="exampleModelHasMySwimLane" MonikerTypeName="ExampleModelHasMySwimLaneMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasMySwimLane" />
      </XmlClassData>
      <XmlClassData TypeName="MySwimLane" MonikerAttributeName="" SerializeId="true" MonikerElementName="mySwimLaneMoniker" ElementName="mySwimLane" MonikerTypeName="MySwimLaneMoniker">
        <DomainClassMoniker Name="MySwimLane" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myButton">
            <DomainRelationshipMoniker Name="MySwimLaneHasMyButton" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MySwimLane/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MySwimLaneHasMyButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="mySwimLaneHasMyButtonMoniker" ElementName="mySwimLaneHasMyButton" MonikerTypeName="MySwimLaneHasMyButtonMoniker">
        <DomainRelationshipMoniker Name="MySwimLaneHasMyButton" />
      </XmlClassData>
      <XmlClassData TypeName="MyButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="myButtonMoniker" ElementName="myButton" MonikerTypeName="MyButtonMoniker">
        <DomainClassMoniker Name="MyButton" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyButton/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="myProperty">
            <DomainPropertyMoniker Name="MyButton/MyProperty" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyButtonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myButtonShapeMoniker" ElementName="myButtonShape" MonikerTypeName="MyButtonShapeMoniker">
        <GeometryShapeMoniker Name="MyButtonShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslSwimlaneExplorer" />
  <Diagram Id="c0acb98d-c39b-498d-988e-296a566a316e" Description="Description for Company.MyDslSwimlane.MyDslSwimlaneDiagram" Name="MyDslSwimlaneDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslSwimlane">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <SwimLaneMap>
        <DomainClassMoniker Name="MySwimLane" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasMySwimLane.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="SwimLane1/NameDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MySwimLane/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <SwimLane>
          <SwimLaneMoniker Name="SwimLane1" />
        </SwimLane>
      </SwimLaneMap>
      <ShapeMap>
        <DomainClassMoniker Name="MyButton" />
        <ParentElementPath>
          <DomainPath>MySwimLaneHasMyButton.MySwimLane/!MySwimLane</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyButtonShape/MyPropertyDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyButton/MyProperty" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyButtonShape/NameDecor" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyButton/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MyButtonShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslSwimlane" EditorGuid="730a9952-d61e-49e9-a628-3fb87e2590fb">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslSwimlaneSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslSwimlane">
      <ElementTool Name="MyButtonComp" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyButtonComp" Tooltip="My Button Comp" HelpKeyword="MyButtonComp">
        <DomainClassMoniker Name="MyButton" />
      </ElementTool>
      <ElementTool Name="MySwimLaneComp" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MySwimLaneComp" Tooltip="My Swim Lane Comp" HelpKeyword="MySwimLaneComp">
        <DomainClassMoniker Name="MySwimLane" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslSwimlaneDiagram" />
  </Designer>
  <Explorer ExplorerGuid="e540c152-84ee-4cba-83ed-d1ced46d360c" Title="MyDslSwimlane Explorer">
    <ExplorerBehaviorMoniker Name="MyDslSwimlane/MyDslSwimlaneExplorer" />
  </Explorer>
</Dsl>