<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="9bb4fe15-e94a-435e-97b5-4d4eda4c835a" Description="Description for Company.MyDSL.MyDSL" Name="MyDSL" DisplayName="MyDSL" Namespace="Company.MyDSL" ProductName="MyDSL" CompanyName="Company" PackageGuid="712081f4-a117-40ea-9c8e-9517f6e78c6d" PackageNamespace="Company.MyDSL" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="3a70f049-0185-48c9-a717-92d31f07491f" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDSL">
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
            <DomainClassMoniker Name="Swim" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasSwim.Swim</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="2721317b-30c6-489c-99c4-12e0a4e30474" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="MyPanel" DisplayName="My Panel" Namespace="Company.MyDSL">
      <BaseClass>
        <DomainClassMoniker Name="MyCompBase" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="9d28ad42-13f0-4c8c-a10e-0a6a45bdfaf3" Description="Description for Company.MyDSL.MyPanel.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="0141b36f-261f-49ec-a043-d5762b72cba5" Description="Description for Company.MyDSL.MyButton" Name="MyButton" DisplayName="My Button" Namespace="Company.MyDSL">
      <BaseClass>
        <DomainClassMoniker Name="MyCompBase" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="27f24f14-c77f-4976-903d-96189ae76836" Description="Description for Company.MyDSL.MyButton.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="03f4f184-33d4-4711-820a-3f4c8026b14d" Description="Description for Company.MyDSL.MyInput" Name="MyInput" DisplayName="My Input" Namespace="Company.MyDSL">
      <BaseClass>
        <DomainClassMoniker Name="MyCompBase" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="14cc5512-f21e-49c9-a533-2f55ac8171a3" Description="Description for Company.MyDSL.MyInput.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="5015f618-ce6c-4695-8c04-47deb3c92754" Description="Description for Company.MyDSL.MyCompBase" Name="MyCompBase" DisplayName="My Comp Base" InheritanceModifier="Abstract" Namespace="Company.MyDSL" />
    <DomainClass Id="b1190a96-5494-48f7-92a4-f2f54c0ddc8e" Description="Description for Company.MyDSL.MyWatch" Name="MyWatch" DisplayName="My Watch" Namespace="Company.MyDSL">
      <BaseClass>
        <DomainClassMoniker Name="MyCompBase" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="537f7a79-cdb7-4530-ae67-928ad45f1d50" Description="Description for Company.MyDSL.MyWatch.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="13999484-98b5-4e15-98b0-c0baa8aa9352" Description="Description for Company.MyDSL.Swim" Name="Swim" DisplayName="Swim" Namespace="Company.MyDSL">
      <Properties>
        <DomainProperty Id="cddadc1a-3aab-42bc-9326-cb63eab00387" Description="Description for Company.MyDSL.Swim.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="MyCompBase" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>SwimHasMyCompBase.MyCompBase</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="3904b8a4-7ecc-4c9a-a534-63a53978ef78" Description="Description for Company.MyDSL.MyWiFi" Name="MyWiFi" DisplayName="My Wi Fi" Namespace="Company.MyDSL">
      <BaseClass>
        <DomainClassMoniker Name="MyCompBase" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="0dd5fe15-c76f-4955-bd7d-947fbff194ea" Description="Description for Company.MyDSL.MyWiFi.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1be61c7e-286e-4e0e-8f24-7a56708781ab" Description="Description for Company.MyDSL.MyWiFi.GHz" Name="GHz" DisplayName="GHz">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="0a7e82da-4ed6-4e72-a3ef-b6f6ed33fad6" Description="Description for Company.MyDSL.MySetting" Name="MySetting" DisplayName="My Setting" Namespace="Company.MyDSL">
      <BaseClass>
        <DomainClassMoniker Name="MyCompBase" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="042d3e51-338a-4905-af5e-02074f6c0fdd" Description="Description for Company.MyDSL.MySetting.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="5c87237b-245e-4898-9f01-3bde69b49c9a" Description="Description for Company.MyDSL.MyCart" Name="MyCart" DisplayName="My Cart" Namespace="Company.MyDSL">
      <BaseClass>
        <DomainClassMoniker Name="MyCompBase" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="3faee271-4fd5-4ed4-931c-5b5f0ea8fb49" Description="Description for Company.MyDSL.MyCart.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7cf85da3-1282-4ae6-8734-2d1ae4ae7233" Description="Description for Company.MyDSL.MyCart.Total" Name="Total" DisplayName="Total">
          <Type>
            <ExternalTypeMoniker Name="/System/Int64" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="310d0662-09bf-4a42-8d6d-4da17e6e95bb" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Company.MyDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="f9a56fc8-97f6-4648-b362-174a6a001038" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="9fe16396-628d-4fbb-bb06-621bae01ebf2" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="2668646f-4091-49ce-b95d-12d82bd0f69c" Description="Description for Company.MyDSL.ExampleModelHasSwim" Name="ExampleModelHasSwim" DisplayName="Example Model Has Swim" Namespace="Company.MyDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="8fba8cf2-fa8e-40ea-bb6d-698b2f683f44" Description="Description for Company.MyDSL.ExampleModelHasSwim.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="Swim" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Swim">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="301b1803-d185-405e-84c2-f4926dc41d35" Description="Description for Company.MyDSL.ExampleModelHasSwim.Swim" Name="Swim" DisplayName="Swim" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="Swim" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a1171cfc-faff-4e67-a0ee-fc7417e15007" Description="Description for Company.MyDSL.MyPanelReferencesMyButton" Name="MyPanelReferencesMyButton" DisplayName="My Panel References My Button" Namespace="Company.MyDSL">
      <Source>
        <DomainRole Id="a5770945-1a2b-4b30-aa5e-a8259364917c" Description="Description for Company.MyDSL.MyPanelReferencesMyButton.MyPanel" Name="MyPanel" DisplayName="My Panel" PropertyName="MyButton" PropertyDisplayName="My Button">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f1784681-cea8-4e71-8767-ef539c28223a" Description="Description for Company.MyDSL.MyPanelReferencesMyButton.MyButton" Name="MyButton" DisplayName="My Button" PropertyName="MyPanel" PropertyDisplayName="My Panel">
          <RolePlayer>
            <DomainClassMoniker Name="MyButton" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0f5ec667-ea20-4d2d-a972-996be8a3440f" Description="Description for Company.MyDSL.MyPanelReferencesMyInput" Name="MyPanelReferencesMyInput" DisplayName="My Panel References My Input" Namespace="Company.MyDSL">
      <Source>
        <DomainRole Id="affb801b-e7f1-4038-b428-5073db2d483e" Description="Description for Company.MyDSL.MyPanelReferencesMyInput.MyPanel" Name="MyPanel" DisplayName="My Panel" PropertyName="MyInput" PropertyDisplayName="My Input">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="8e55a3f8-c841-41a9-ac18-36add3cb9b9f" Description="Description for Company.MyDSL.MyPanelReferencesMyInput.MyInput" Name="MyInput" DisplayName="My Input" PropertyName="MyPanel" PropertyDisplayName="My Panel">
          <RolePlayer>
            <DomainClassMoniker Name="MyInput" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="05cdbd6c-a70f-44c8-a3cb-508491f83920" Description="Description for Company.MyDSL.MyPanelReferencesMyCart" Name="MyPanelReferencesMyCart" DisplayName="My Panel References My Cart" Namespace="Company.MyDSL">
      <Source>
        <DomainRole Id="d490b632-c412-4a47-ae1c-8284a204930c" Description="Description for Company.MyDSL.MyPanelReferencesMyCart.MyPanel" Name="MyPanel" DisplayName="My Panel" PropertyName="MyCart" PropertyDisplayName="My Cart">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4b95f0e9-dcc2-478c-aca7-ac9cc88257e6" Description="Description for Company.MyDSL.MyPanelReferencesMyCart.MyCart" Name="MyCart" DisplayName="My Cart" PropertyName="MyPanel" PropertyDisplayName="My Panel">
          <RolePlayer>
            <DomainClassMoniker Name="MyCart" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="149292ff-2312-459b-aa42-0a60008bed49" Description="Description for Company.MyDSL.MyPanelReferencesMySetting" Name="MyPanelReferencesMySetting" DisplayName="My Panel References My Setting" Namespace="Company.MyDSL">
      <Source>
        <DomainRole Id="3250bc33-5ef8-4fb5-9a01-dd593256ba42" Description="Description for Company.MyDSL.MyPanelReferencesMySetting.MyPanel" Name="MyPanel" DisplayName="My Panel" PropertyName="MySetting" PropertyDisplayName="My Setting">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a655230f-3204-45ce-b2d0-9d0bcc6d4abc" Description="Description for Company.MyDSL.MyPanelReferencesMySetting.MySetting" Name="MySetting" DisplayName="My Setting" PropertyName="MyPanel" PropertyDisplayName="My Panel">
          <RolePlayer>
            <DomainClassMoniker Name="MySetting" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f4301932-8e99-4498-a4c2-ba931647da05" Description="Description for Company.MyDSL.MyPanelReferencesMyWiFi" Name="MyPanelReferencesMyWiFi" DisplayName="My Panel References My Wi Fi" Namespace="Company.MyDSL">
      <Source>
        <DomainRole Id="78ee917b-1d68-4c39-9192-19c0eec2711b" Description="Description for Company.MyDSL.MyPanelReferencesMyWiFi.MyPanel" Name="MyPanel" DisplayName="My Panel" PropertyName="MyWiFi" PropertyDisplayName="My Wi Fi">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c9f56d7d-8091-467c-afbd-43a070f3fd14" Description="Description for Company.MyDSL.MyPanelReferencesMyWiFi.MyWiFi" Name="MyWiFi" DisplayName="My Wi Fi" PropertyName="MyPanel" PropertyDisplayName="My Panel">
          <RolePlayer>
            <DomainClassMoniker Name="MyWiFi" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="b75f2dca-1e65-4bce-93cf-9b325d4d3e5e" Description="Description for Company.MyDSL.MyPanelReferencesMyWatch" Name="MyPanelReferencesMyWatch" DisplayName="My Panel References My Watch" Namespace="Company.MyDSL">
      <Source>
        <DomainRole Id="46d729b1-5e49-4ea5-81e8-87a61c03e5df" Description="Description for Company.MyDSL.MyPanelReferencesMyWatch.MyPanel" Name="MyPanel" DisplayName="My Panel" PropertyName="MyWatch" PropertyDisplayName="My Watch">
          <RolePlayer>
            <DomainClassMoniker Name="MyPanel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fd9146b4-33fa-4c0c-815d-658877f86666" Description="Description for Company.MyDSL.MyPanelReferencesMyWatch.MyWatch" Name="MyWatch" DisplayName="My Watch" PropertyName="MyPanel" PropertyDisplayName="My Panel">
          <RolePlayer>
            <DomainClassMoniker Name="MyWatch" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="567bd191-6f41-484c-905d-d6325e0dc0ab" Description="Description for Company.MyDSL.SwimHasMyCompBase" Name="SwimHasMyCompBase" DisplayName="Swim Has My Comp Base" Namespace="Company.MyDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="f7cb0beb-f88c-478c-b368-a93db7536d8a" Description="Description for Company.MyDSL.SwimHasMyCompBase.Swim" Name="Swim" DisplayName="Swim" PropertyName="MyCompBase" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="My Comp Base">
          <RolePlayer>
            <DomainClassMoniker Name="Swim" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="99199608-28e4-4f84-8059-03d8848b0253" Description="Description for Company.MyDSL.SwimHasMyCompBase.MyCompBase" Name="MyCompBase" DisplayName="My Comp Base" PropertyName="Swim" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Swim">
          <RolePlayer>
            <DomainClassMoniker Name="MyCompBase" />
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
    <GeometryShape Id="f6299056-1b51-4741-be99-3ce6306e61d9" Description="Shape used to represent ExampleElements on a Diagram." Name="MyPanelShape" DisplayName="My Panel Shape" Namespace="Company.MyDSL" FixedTooltipText="My Panel Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="MyBaseShape" />
      </BaseGeometryShape>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="e6bc2648-4051-4f18-b445-39ec19ddfe92" Description="Description for Company.MyDSL.MyButtonShape" Name="MyButtonShape" DisplayName="My Button Shape" Namespace="Company.MyDSL" FixedTooltipText="My Button Shape" FillColor="Gold" InitialHeight="1" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="MyBaseShape" />
      </BaseGeometryShape>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="ea81a2cc-9be1-4a44-bd63-2cfe65ff8fbf" Description="Description for Company.MyDSL.MyInputShape" Name="MyInputShape" DisplayName="My Input Shape" Namespace="Company.MyDSL" FixedTooltipText="My Input Shape" FillColor="MistyRose" InitialHeight="1" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="MyBaseShape" />
      </BaseGeometryShape>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <ImageShape Id="a6011d5d-08f5-4aaf-89cc-eea4093232b8" Description="Description for Company.MyDSL.MyWatchShape" Name="MyWatchShape" DisplayName="My Watch Shape" Namespace="Company.MyDSL" FixedTooltipText="My Watch Shape" InitialHeight="1" Image="Resources\watch.png">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </ImageShape>
    <GeometryShape Id="ba8217ac-07dc-4feb-873d-948729cf7c5f" Description="Description for Company.MyDSL.MyBaseShape" Name="MyBaseShape" DisplayName="My Base Shape" Namespace="Company.MyDSL" FixedTooltipText="My Base Shape" InitialHeight="1" Geometry="Rectangle" />
    <SwimLane Id="7d3d5ce5-56dd-46b1-9dbd-13e18733ffdb" Description="Description for Company.MyDSL.LayoutSwimLane" Name="LayoutSwimLane" DisplayName="Layout Swim Lane" Namespace="Company.MyDSL" FixedTooltipText="Layout Swim Lane" InitialWidth="0" InitialHeight="0">
      <Decorators>
        <SwimLaneHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
          <TextDecorator Name="SwimName" DisplayName="Swim Name" DefaultText="SwimName" />
        </SwimLaneHasDecorators>
      </Decorators>
    </SwimLane>
    <ImageShape Id="032e1f2d-d830-43b7-b488-b1ebd8a9ace2" Description="Description for Company.MyDSL.MyWiFiShape" Name="MyWiFiShape" DisplayName="My Wi Fi Shape" Namespace="Company.MyDSL" FixedTooltipText="My Wi Fi Shape" InitialHeight="1" Image="Resources\wifi.png" />
    <ImageShape Id="aa1850c1-088a-4112-89ac-e6c074a565d4" Description="Description for Company.MyDSL.MySettingShape" Name="MySettingShape" DisplayName="My Setting Shape" Namespace="Company.MyDSL" FixedTooltipText="My Setting Shape" InitialHeight="1" Image="Resources\setting.png" />
    <ImageShape Id="da9d1048-1bcb-4023-87de-8984ab465349" Description="Description for Company.MyDSL.MyCartShape" Name="MyCartShape" DisplayName="My Cart Shape" Namespace="Company.MyDSL" FixedTooltipText="My Cart Shape" InitialHeight="1" Image="Resources\cart.png" />
    <GeometryShape Id="0ddd4a5b-764a-4232-9158-c6c38725aaa2" Description="Description for Company.MyDSL.CommentShape" Name="CommentShape" DisplayName="Comment Shape" Namespace="Company.MyDSL" FixedTooltipText="Comment Shape" FillColor="Khaki" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TextDecor" DisplayName="Text Decor" DefaultText="TextDecor" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDSLSerializationBehavior" Namespace="Company.MyDSL">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="swim">
            <DomainRelationshipMoniker Name="ExampleModelHasSwim" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyPanel" MonikerAttributeName="name" SerializeId="true" MonikerElementName="myPanelMoniker" ElementName="myPanel" MonikerTypeName="MyPanelMoniker">
        <DomainClassMoniker Name="MyPanel" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="MyPanel/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myButton">
            <DomainRelationshipMoniker Name="MyPanelReferencesMyButton" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myInput">
            <DomainRelationshipMoniker Name="MyPanelReferencesMyInput" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myCart">
            <DomainRelationshipMoniker Name="MyPanelReferencesMyCart" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="mySetting">
            <DomainRelationshipMoniker Name="MyPanelReferencesMySetting" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myWiFi">
            <DomainRelationshipMoniker Name="MyPanelReferencesMyWiFi" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myWatch">
            <DomainRelationshipMoniker Name="MyPanelReferencesMyWatch" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelShapeMoniker" ElementName="myPanelShape" MonikerTypeName="MyPanelShapeMoniker">
        <GeometryShapeMoniker Name="MyPanelShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyDSLDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDSLDiagramMoniker" ElementName="myDSLDiagram" MonikerTypeName="MyDSLDiagramMoniker">
        <DiagramMoniker Name="MyDSLDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="MyButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="myButtonMoniker" ElementName="myButton" MonikerTypeName="MyButtonMoniker">
        <DomainClassMoniker Name="MyButton" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyButton/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyInput" MonikerAttributeName="" SerializeId="true" MonikerElementName="myInputMoniker" ElementName="myInput" MonikerTypeName="MyInputMoniker">
        <DomainClassMoniker Name="MyInput" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyInput/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyButtonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myButtonShapeMoniker" ElementName="myButtonShape" MonikerTypeName="MyButtonShapeMoniker">
        <GeometryShapeMoniker Name="MyButtonShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyInputShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myInputShapeMoniker" ElementName="myInputShape" MonikerTypeName="MyInputShapeMoniker">
        <GeometryShapeMoniker Name="MyInputShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyCompBase" MonikerAttributeName="" SerializeId="true" MonikerElementName="myCompBaseMoniker" ElementName="myCompBase" MonikerTypeName="MyCompBaseMoniker">
        <DomainClassMoniker Name="MyCompBase" />
      </XmlClassData>
      <XmlClassData TypeName="MyWatch" MonikerAttributeName="" SerializeId="true" MonikerElementName="myWatchMoniker" ElementName="myWatch" MonikerTypeName="MyWatchMoniker">
        <DomainClassMoniker Name="MyWatch" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyWatch/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyWatchShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myWatchShapeMoniker" ElementName="myWatchShape" MonikerTypeName="MyWatchShapeMoniker">
        <ImageShapeMoniker Name="MyWatchShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyBaseShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myBaseShapeMoniker" ElementName="myBaseShape" MonikerTypeName="MyBaseShapeMoniker">
        <GeometryShapeMoniker Name="MyBaseShape" />
      </XmlClassData>
      <XmlClassData TypeName="LayoutSwimLane" MonikerAttributeName="" SerializeId="true" MonikerElementName="layoutSwimLaneMoniker" ElementName="layoutSwimLane" MonikerTypeName="LayoutSwimLaneMoniker">
        <SwimLaneMoniker Name="LayoutSwimLane" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasSwim" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasSwimMoniker" ElementName="exampleModelHasSwim" MonikerTypeName="ExampleModelHasSwimMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasSwim" />
      </XmlClassData>
      <XmlClassData TypeName="Swim" MonikerAttributeName="" SerializeId="true" MonikerElementName="swimMoniker" ElementName="swim" MonikerTypeName="SwimMoniker">
        <DomainClassMoniker Name="Swim" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Swim/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="myCompBase">
            <DomainRelationshipMoniker Name="SwimHasMyCompBase" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyWiFi" MonikerAttributeName="" SerializeId="true" MonikerElementName="myWiFiMoniker" ElementName="myWiFi" MonikerTypeName="MyWiFiMoniker">
        <DomainClassMoniker Name="MyWiFi" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyWiFi/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="gHz">
            <DomainPropertyMoniker Name="MyWiFi/GHz" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MySetting" MonikerAttributeName="" SerializeId="true" MonikerElementName="mySettingMoniker" ElementName="mySetting" MonikerTypeName="MySettingMoniker">
        <DomainClassMoniker Name="MySetting" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MySetting/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyCart" MonikerAttributeName="" SerializeId="true" MonikerElementName="myCartMoniker" ElementName="myCart" MonikerTypeName="MyCartMoniker">
        <DomainClassMoniker Name="MyCart" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="MyCart/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="total">
            <DomainPropertyMoniker Name="MyCart/Total" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyWiFiShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myWiFiShapeMoniker" ElementName="myWiFiShape" MonikerTypeName="MyWiFiShapeMoniker">
        <ImageShapeMoniker Name="MyWiFiShape" />
      </XmlClassData>
      <XmlClassData TypeName="MySettingShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="mySettingShapeMoniker" ElementName="mySettingShape" MonikerTypeName="MySettingShapeMoniker">
        <ImageShapeMoniker Name="MySettingShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyCartShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="myCartShapeMoniker" ElementName="myCartShape" MonikerTypeName="MyCartShapeMoniker">
        <ImageShapeMoniker Name="MyCartShape" />
      </XmlClassData>
      <XmlClassData TypeName="CommentShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentShapeMoniker" ElementName="commentShape" MonikerTypeName="CommentShapeMoniker">
        <GeometryShapeMoniker Name="CommentShape" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelReferencesMyButton" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelReferencesMyButtonMoniker" ElementName="myPanelReferencesMyButton" MonikerTypeName="MyPanelReferencesMyButtonMoniker">
        <DomainRelationshipMoniker Name="MyPanelReferencesMyButton" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelReferencesMyInput" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelReferencesMyInputMoniker" ElementName="myPanelReferencesMyInput" MonikerTypeName="MyPanelReferencesMyInputMoniker">
        <DomainRelationshipMoniker Name="MyPanelReferencesMyInput" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelReferencesMyCart" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelReferencesMyCartMoniker" ElementName="myPanelReferencesMyCart" MonikerTypeName="MyPanelReferencesMyCartMoniker">
        <DomainRelationshipMoniker Name="MyPanelReferencesMyCart" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelReferencesMySetting" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelReferencesMySettingMoniker" ElementName="myPanelReferencesMySetting" MonikerTypeName="MyPanelReferencesMySettingMoniker">
        <DomainRelationshipMoniker Name="MyPanelReferencesMySetting" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelReferencesMyWiFi" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelReferencesMyWiFiMoniker" ElementName="myPanelReferencesMyWiFi" MonikerTypeName="MyPanelReferencesMyWiFiMoniker">
        <DomainRelationshipMoniker Name="MyPanelReferencesMyWiFi" />
      </XmlClassData>
      <XmlClassData TypeName="MyPanelReferencesMyWatch" MonikerAttributeName="" SerializeId="true" MonikerElementName="myPanelReferencesMyWatchMoniker" ElementName="myPanelReferencesMyWatch" MonikerTypeName="MyPanelReferencesMyWatchMoniker">
        <DomainRelationshipMoniker Name="MyPanelReferencesMyWatch" />
      </XmlClassData>
      <XmlClassData TypeName="SwimHasMyCompBase" MonikerAttributeName="" SerializeId="true" MonikerElementName="swimHasMyCompBaseMoniker" ElementName="swimHasMyCompBase" MonikerTypeName="SwimHasMyCompBaseMoniker">
        <DomainRelationshipMoniker Name="SwimHasMyCompBase" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDSLExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="MyPanelReferencesMyButtonBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="MyPanelReferencesMyButton" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyPanel" />
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
    <ConnectionBuilder Name="MyPanelReferencesMyInputBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="MyPanelReferencesMyInput" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyPanel" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyInput" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="MyPanelReferencesMyCartBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="MyPanelReferencesMyCart" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyPanel" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyCart" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="MyPanelReferencesMySettingBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="MyPanelReferencesMySetting" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyPanel" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MySetting" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="MyPanelReferencesMyWiFiBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="MyPanelReferencesMyWiFi" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyPanel" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyWiFi" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="MyPanelReferencesMyWatchBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="MyPanelReferencesMyWatch" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyPanel" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MyWatch" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="5df3a0bd-fe14-4b93-85e0-adfe6b0da000" Description="Description for Company.MyDSL.MyDSLDiagram" Name="MyDSLDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDSL">
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
        <DomainClassMoniker Name="MyButton" />
        <ParentElementPath>
          <DomainPath>SwimHasMyCompBase.Swim/!Swim</DomainPath>
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
      <ShapeMap>
        <DomainClassMoniker Name="MyInput" />
        <ParentElementPath>
          <DomainPath>SwimHasMyCompBase.Swim/!Swim</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyButtonShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyInput/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyInputShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyInput/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MyInputShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MyWatch" />
        <ParentElementPath>
          <DomainPath>SwimHasMyCompBase.Swim/!Swim</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MyWatchShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MyWatch/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="MyWatchShape" />
      </ShapeMap>
      <SwimLaneMap>
        <DomainClassMoniker Name="Swim" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasSwim.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="LayoutSwimLane/SwimName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Swim/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <SwimLane>
          <SwimLaneMoniker Name="LayoutSwimLane" />
        </SwimLane>
      </SwimLaneMap>
      <ShapeMap>
        <DomainClassMoniker Name="MyWiFi" />
        <ParentElementPath>
          <DomainPath>SwimHasMyCompBase.Swim/!Swim</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="MyWiFiShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MySetting" />
        <ParentElementPath>
          <DomainPath>SwimHasMyCompBase.Swim/!Swim</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="MySettingShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MyCart" />
        <ParentElementPath>
          <DomainPath>SwimHasMyCompBase.Swim/!Swim</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="MyCartShape" />
      </ShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDSL" EditorGuid="32f644ae-4625-44f6-acac-6f85502bfe71">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDSLSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDSL">
      <ElementTool Name="PanelComponent" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="PanelComponent" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="MyPanel" />
      </ElementTool>
      <ElementTool Name="ButtonComponent" ToolboxIcon="Resources\bmp\setting (1).bmp" Caption="ButtonComponent" Tooltip="Button Component" HelpKeyword="ButtonComponent">
        <DomainClassMoniker Name="MyButton" />
      </ElementTool>
      <ElementTool Name="InputComponent" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="InputComponent" Tooltip="Input Component" HelpKeyword="InputComponent">
        <DomainClassMoniker Name="MyInput" />
      </ElementTool>
      <ElementTool Name="Swim" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Swim" Tooltip="Swim" HelpKeyword="Swim">
        <DomainClassMoniker Name="Swim" />
      </ElementTool>
      <ElementTool Name="MyWatchComp" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyWatchComp" Tooltip="My Watch Comp" HelpKeyword="MyWatchComp">
        <DomainClassMoniker Name="MyWatch" />
      </ElementTool>
      <ElementTool Name="MyWifiComp" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyWifiComp" Tooltip="My Wifi Comp" HelpKeyword="MyWifiComp">
        <DomainClassMoniker Name="MyWiFi" />
      </ElementTool>
      <ElementTool Name="MySettingComp" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MySettingComp" Tooltip="My Setting Comp" HelpKeyword="MySettingComp">
        <DomainClassMoniker Name="MySetting" />
      </ElementTool>
      <ElementTool Name="MyCartComp" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="MyCartComp" Tooltip="My Cart Comp" HelpKeyword="MyCartComp">
        <DomainClassMoniker Name="MyCart" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDSLDiagram" />
  </Designer>
  <Explorer ExplorerGuid="6ff6bd9d-20ca-42e9-833c-399dbd5521e4" Title="MyDSL Explorer">
    <ExplorerBehaviorMoniker Name="MyDSL/MyDSLExplorer" />
  </Explorer>
</Dsl>