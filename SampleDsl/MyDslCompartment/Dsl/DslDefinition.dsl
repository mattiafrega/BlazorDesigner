<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="3c3a5eda-1afd-47d9-a2e2-589554927ac6" Description="Description for Company.MyDslCompartment.MyDslCompartment" Name="MyDslCompartment" DisplayName="MyDslCompartment" Namespace="Company.MyDslCompartment" ProductName="MyDslCompartment" CompanyName="Company" PackageGuid="9ee42bd8-bdc7-4f23-b186-abb0bea36a69" PackageNamespace="Company.MyDslCompartment" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="6ab89487-4c40-4332-a798-53e4645844c4" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.MyDslCompartment">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Scaffale" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasScaffale.Scaffale</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="851869ef-5d50-4419-9c66-1199ae5a4a83" Description="Description for Company.MyDslCompartment.Scaffale" Name="Scaffale" DisplayName="Scaffale" Namespace="Company.MyDslCompartment">
      <Properties>
        <DomainProperty Id="437a559b-b675-461c-9a29-4c3ce2149b22" Description="Description for Company.MyDslCompartment.Scaffale.Nome Scaffale" Name="NomeScaffale" DisplayName="Nome Scaffale">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Libro" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ScaffaleHasLibro.Libro</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="53da1899-ad1e-475c-9e1f-e28d945107d5" Description="Description for Company.MyDslCompartment.Libro" Name="Libro" DisplayName="Libro" Namespace="Company.MyDslCompartment">
      <Properties>
        <DomainProperty Id="b2d8d324-a669-48af-ac6c-df48172f3dd3" Description="Description for Company.MyDslCompartment.Libro.Titolo Libro" Name="TitoloLibro" DisplayName="Titolo Libro">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="af73911d-20ba-42bb-b478-ccbc92536498" Description="Description for Company.MyDslCompartment.ExampleModelHasScaffale" Name="ExampleModelHasScaffale" DisplayName="Example Model Has Scaffale" Namespace="Company.MyDslCompartment" IsEmbedding="true">
      <Source>
        <DomainRole Id="f1ac2f46-a707-46e9-b176-d878ed57217b" Description="Description for Company.MyDslCompartment.ExampleModelHasScaffale.ExampleModel" Name="ExampleModel" DisplayName="Example Model" PropertyName="Scaffale" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Scaffale">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f7082cc8-b1b5-4edc-a6cd-8c827d15007f" Description="Description for Company.MyDslCompartment.ExampleModelHasScaffale.Scaffale" Name="Scaffale" DisplayName="Scaffale" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="Scaffale" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="da5b2546-8d46-4964-8858-dc72984c5e7e" Description="Description for Company.MyDslCompartment.ScaffaleHasLibro" Name="ScaffaleHasLibro" DisplayName="Scaffale Has Libro" Namespace="Company.MyDslCompartment" IsEmbedding="true">
      <Source>
        <DomainRole Id="333ee265-4229-47bd-8858-439329aa2782" Description="Description for Company.MyDslCompartment.ScaffaleHasLibro.Scaffale" Name="Scaffale" DisplayName="Scaffale" PropertyName="Libro" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Libro">
          <RolePlayer>
            <DomainClassMoniker Name="Scaffale" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e3415f45-e8ce-4845-b202-6d5b5509488c" Description="Description for Company.MyDslCompartment.ScaffaleHasLibro.Libro" Name="Libro" DisplayName="Libro" PropertyName="Scaffale" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Scaffale">
          <RolePlayer>
            <DomainClassMoniker Name="Libro" />
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
    <CompartmentShape Id="d933c09a-eca1-448a-876c-0a4074eeae82" Description="Description for Company.MyDslCompartment.ScaffaleShape" Name="ScaffaleShape" DisplayName="Scaffale Shape" Namespace="Company.MyDslCompartment" FixedTooltipText="Scaffale Shape" FillColor="DarkRed" InitialHeight="1" FillGradientMode="Vertical" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NomeScaffale" DisplayName="Nome Scaffale" DefaultText="NomeScaffale" />
      </ShapeHasDecorators>
      <Compartment Name="Libri" />
    </CompartmentShape>
  </Shapes>
  <XmlSerializationBehavior Name="MyDslCompartmentSerializationBehavior" Namespace="Company.MyDslCompartment">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="scaffale">
            <DomainRelationshipMoniker Name="ExampleModelHasScaffale" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MyDslCompartmentDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="myDslCompartmentDiagramMoniker" ElementName="myDslCompartmentDiagram" MonikerTypeName="MyDslCompartmentDiagramMoniker">
        <DiagramMoniker Name="MyDslCompartmentDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="ScaffaleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="scaffaleShapeMoniker" ElementName="scaffaleShape" MonikerTypeName="ScaffaleShapeMoniker">
        <CompartmentShapeMoniker Name="ScaffaleShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasScaffale" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasScaffaleMoniker" ElementName="exampleModelHasScaffale" MonikerTypeName="ExampleModelHasScaffaleMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasScaffale" />
      </XmlClassData>
      <XmlClassData TypeName="Scaffale" MonikerAttributeName="" SerializeId="true" MonikerElementName="scaffaleMoniker" ElementName="scaffale" MonikerTypeName="ScaffaleMoniker">
        <DomainClassMoniker Name="Scaffale" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="libro">
            <DomainRelationshipMoniker Name="ScaffaleHasLibro" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="nomeScaffale">
            <DomainPropertyMoniker Name="Scaffale/NomeScaffale" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ScaffaleHasLibro" MonikerAttributeName="" SerializeId="true" MonikerElementName="scaffaleHasLibroMoniker" ElementName="scaffaleHasLibro" MonikerTypeName="ScaffaleHasLibroMoniker">
        <DomainRelationshipMoniker Name="ScaffaleHasLibro" />
      </XmlClassData>
      <XmlClassData TypeName="Libro" MonikerAttributeName="" SerializeId="true" MonikerElementName="libroMoniker" ElementName="libro" MonikerTypeName="LibroMoniker">
        <DomainClassMoniker Name="Libro" />
        <ElementData>
          <XmlPropertyData XmlName="titoloLibro">
            <DomainPropertyMoniker Name="Libro/TitoloLibro" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="MyDslCompartmentExplorer" />
  <Diagram Id="97c123d4-5779-4d12-9906-b7fbfb29b9dc" Description="Description for Company.MyDslCompartment.MyDslCompartmentDiagram" Name="MyDslCompartmentDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.MyDslCompartment">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Scaffale" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasScaffale.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ScaffaleShape/NomeScaffale" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Scaffale/NomeScaffale" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="ScaffaleShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="ScaffaleShape/Libri" />
          <ElementsDisplayed>
            <DomainPath>ScaffaleHasLibro.Libro/!Libro</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Libro/TitoloLibro" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
    </ShapeMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="MyDslCompartment" EditorGuid="e1a012a1-08da-49dd-bbbe-6c56454128be">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="MyDslCompartmentSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="MyDslCompartment">
      <ElementTool Name="Scaffale" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Scaffale" Tooltip="Scaffale" HelpKeyword="Scaffale">
        <DomainClassMoniker Name="Scaffale" />
      </ElementTool>
      <ElementTool Name="Libro" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Libro" Tooltip="Libro" HelpKeyword="Libro">
        <DomainClassMoniker Name="Libro" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="MyDslCompartmentDiagram" />
  </Designer>
  <Explorer ExplorerGuid="6e8212c7-4f53-414e-9a57-a0afcc898438" Title="MyDslCompartment Explorer">
    <ExplorerBehaviorMoniker Name="MyDslCompartment/MyDslCompartmentExplorer" />
  </Explorer>
</Dsl>