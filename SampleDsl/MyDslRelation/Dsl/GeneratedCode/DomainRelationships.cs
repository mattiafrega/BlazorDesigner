﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
namespace Company.MyDslRelation
{
	/// <summary>
	/// DomainRelationship ExampleModelHasElements
	/// Embedding relationship between the Model and Elements
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslRelation.ExampleModelHasElements.DisplayName", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslRelation.ExampleModelHasElements.Description", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslRelation.MyDslRelationDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainRelationship(IsEmbedding=true)]
	[DslModeling::DomainObjectId("d884d010-8679-4b43-ae79-80fcdeb22925")]
	public partial class ExampleModelHasElements : DslModeling::ElementLink
	{
		#region Constructors, domain class Id
		
		/// <summary>
		/// ExampleModelHasElements domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xd884d010, 0x8679, 0x4b43, 0xae, 0x79, 0x80, 0xfc, 0xde, 0xb2, 0x29, 0x25);
	
				
		/// <summary>
		/// Constructor
		/// Creates a ExampleModelHasElements link in the same Partition as the given ExampleModel
		/// </summary>
		/// <param name="source">ExampleModel to use as the source of the relationship.</param>
		/// <param name="target">MyButton to use as the target of the relationship.</param>
		public ExampleModelHasElements(ExampleModel source, MyButton target)
			: base((source != null ? source.Partition : null), new DslModeling::RoleAssignment[]{new DslModeling::RoleAssignment(ExampleModelHasElements.ExampleModelDomainRoleId, source), new DslModeling::RoleAssignment(ExampleModelHasElements.ElementDomainRoleId, target)}, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public ExampleModelHasElements(DslModeling::Store store, params DslModeling::RoleAssignment[] roleAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public ExampleModelHasElements(DslModeling::Store store, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public ExampleModelHasElements(DslModeling::Partition partition, params DslModeling::RoleAssignment[] roleAssignments)
			: base(partition, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public ExampleModelHasElements(DslModeling::Partition partition, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, roleAssignments, propertyAssignments)
		{
		}
		#endregion
		#region ExampleModel domain role code
		
		/// <summary>
		/// ExampleModel domain role Id.
		/// </summary>
		public static readonly global::System.Guid ExampleModelDomainRoleId = new global::System.Guid(0x39892d17, 0x0686, 0x4347, 0xbe, 0xbe, 0xd9, 0xa5, 0x3e, 0xaa, 0x50, 0x13);
		
		/// <summary>
		/// DomainRole ExampleModel
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslRelation.ExampleModelHasElements/ExampleModel.DisplayName", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslRelation.ExampleModelHasElements/ExampleModel.Description", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Source, PropertyName = "Elements", PropertyDisplayNameKey="Company.MyDslRelation.ExampleModelHasElements/ExampleModel.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.PropagatesCopyToLinkAndOppositeRolePlayer, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("39892d17-0686-4347-bebe-d9a53eaa5013")]
		public virtual ExampleModel ExampleModel
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (ExampleModel)DslModeling::DomainRoleInfo.GetRolePlayer(this, ExampleModelDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, ExampleModelDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access ExampleModel of a MyButton
		/// <summary>
		/// Gets ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static ExampleModel GetExampleModel(MyButton element)
		{
			return DslModeling::DomainRoleInfo.GetLinkedElement(element, ElementDomainRoleId) as ExampleModel;
		}
		
		/// <summary>
		/// Sets ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static void SetExampleModel(MyButton element, ExampleModel newExampleModel)
		{
			DslModeling::DomainRoleInfo.SetLinkedElement(element, ElementDomainRoleId, newExampleModel);
		}
		#endregion
		#region Element domain role code
		
		/// <summary>
		/// Element domain role Id.
		/// </summary>
		public static readonly global::System.Guid ElementDomainRoleId = new global::System.Guid(0xf2456ee3, 0x0fbb, 0x4045, 0x8d, 0xd4, 0x97, 0x00, 0x6a, 0x18, 0xd3, 0xf1);
		
		/// <summary>
		/// DomainRole Element
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslRelation.ExampleModelHasElements/Element.DisplayName", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslRelation.ExampleModelHasElements/Element.Description", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Target, PropertyName = "ExampleModel", PropertyDisplayNameKey="Company.MyDslRelation.ExampleModelHasElements/Element.PropertyDisplayName", PropagatesDelete = true,  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.One)]
		[DslModeling::DomainObjectId("f2456ee3-0fbb-4045-8dd4-97006a18d3f1")]
		public virtual MyButton Element
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (MyButton)DslModeling::DomainRoleInfo.GetRolePlayer(this, ElementDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, ElementDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access Elements of a ExampleModel
		/// <summary>
		/// Gets a list of Elements.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static DslModeling::LinkedElementCollection<MyButton> GetElements(ExampleModel element)
		{
			return GetRoleCollection<DslModeling::LinkedElementCollection<MyButton>, MyButton>(element, ExampleModelDomainRoleId);
		}
		#endregion
		#region ExampleModel link accessor
		/// <summary>
		/// Get the list of ExampleModelHasElements links to a ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslRelation.ExampleModelHasElements> GetLinksToElements ( global::Company.MyDslRelation.ExampleModel exampleModelInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslRelation.ExampleModelHasElements>(exampleModelInstance, global::Company.MyDslRelation.ExampleModelHasElements.ExampleModelDomainRoleId);
		}
		#endregion
		#region Element link accessor
		/// <summary>
		/// Get the ExampleModelHasElements link to a MyButton.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.MyDslRelation.ExampleModelHasElements GetLinkToExampleModel (global::Company.MyDslRelation.MyButton elementInstance)
		{
			global::System.Collections.Generic.IList<global::Company.MyDslRelation.ExampleModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslRelation.ExampleModelHasElements>(elementInstance, global::Company.MyDslRelation.ExampleModelHasElements.ElementDomainRoleId);
			global::System.Diagnostics.Debug.Assert(links.Count <= 1, "Multiplicity of Element not obeyed.");
			if ( links.Count == 0 )
			{
				return null;
			}
			else
			{
				return links[0];
			}
		}
		#endregion
		#region ExampleModelHasElements instance accessors
		
		/// <summary>
		/// Get any ExampleModelHasElements links between a given ExampleModel and a MyButton.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslRelation.ExampleModelHasElements> GetLinks( global::Company.MyDslRelation.ExampleModel source, global::Company.MyDslRelation.MyButton target )
		{
			global::System.Collections.Generic.List<global::Company.MyDslRelation.ExampleModelHasElements> outLinks = new global::System.Collections.Generic.List<global::Company.MyDslRelation.ExampleModelHasElements>();
			global::System.Collections.Generic.IList<global::Company.MyDslRelation.ExampleModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslRelation.ExampleModelHasElements>(source, global::Company.MyDslRelation.ExampleModelHasElements.ExampleModelDomainRoleId);
			foreach ( global::Company.MyDslRelation.ExampleModelHasElements link in links )
			{
				if ( target.Equals(link.Element) )
				{
					outLinks.Add(link);
				}
			}
			return outLinks.AsReadOnly();
		}
		/// <summary>
		/// Get the one ExampleModelHasElements link between a given ExampleModeland a MyButton.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.MyDslRelation.ExampleModelHasElements GetLink( global::Company.MyDslRelation.ExampleModel source, global::Company.MyDslRelation.MyButton target )
		{
			global::System.Collections.Generic.IList<global::Company.MyDslRelation.ExampleModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslRelation.ExampleModelHasElements>(source, global::Company.MyDslRelation.ExampleModelHasElements.ExampleModelDomainRoleId);
			foreach ( global::Company.MyDslRelation.ExampleModelHasElements link in links )
			{
				if ( target.Equals(link.Element) )
				{
					return link;
				}
			}
			return null;
		}
		
		#endregion
	}
}
namespace Company.MyDslRelation
{
	/// <summary>
	/// DomainRelationship MyButtonReferencesTargets
	/// Reference relationship between Elements.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslRelation.MyButtonReferencesTargets.DisplayName", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslRelation.MyButtonReferencesTargets.Description", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslRelation.MyDslRelationDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainRelationship()]
	[DslModeling::DomainObjectId("49ef33c9-9bd5-41b7-81be-292dbebc1ee0")]
	public partial class MyButtonReferencesTargets : DslModeling::ElementLink
	{
		#region Constructors, domain class Id
		
		/// <summary>
		/// MyButtonReferencesTargets domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x49ef33c9, 0x9bd5, 0x41b7, 0x81, 0xbe, 0x29, 0x2d, 0xbe, 0xbc, 0x1e, 0xe0);
	
				
		/// <summary>
		/// Constructor
		/// Creates a MyButtonReferencesTargets link in the same Partition as the given MyButton
		/// </summary>
		/// <param name="source">MyButton to use as the source of the relationship.</param>
		/// <param name="target">MyButton to use as the target of the relationship.</param>
		public MyButtonReferencesTargets(MyButton source, MyButton target)
			: base((source != null ? source.Partition : null), new DslModeling::RoleAssignment[]{new DslModeling::RoleAssignment(MyButtonReferencesTargets.SourceDomainRoleId, source), new DslModeling::RoleAssignment(MyButtonReferencesTargets.TargetDomainRoleId, target)}, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public MyButtonReferencesTargets(DslModeling::Store store, params DslModeling::RoleAssignment[] roleAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public MyButtonReferencesTargets(DslModeling::Store store, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public MyButtonReferencesTargets(DslModeling::Partition partition, params DslModeling::RoleAssignment[] roleAssignments)
			: base(partition, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public MyButtonReferencesTargets(DslModeling::Partition partition, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, roleAssignments, propertyAssignments)
		{
		}
		#endregion
		#region Source domain role code
		
		/// <summary>
		/// Source domain role Id.
		/// </summary>
		public static readonly global::System.Guid SourceDomainRoleId = new global::System.Guid(0x029b333d, 0x8b96, 0x4993, 0xb5, 0xc1, 0x78, 0xbf, 0x51, 0x95, 0x02, 0xc2);
		
		/// <summary>
		/// DomainRole Source
		/// Description for Company.MyDslRelation.ExampleRelationship.Target
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslRelation.MyButtonReferencesTargets/Source.DisplayName", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslRelation.MyButtonReferencesTargets/Source.Description", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Source, PropertyName = "Targets", PropertyDisplayNameKey="Company.MyDslRelation.MyButtonReferencesTargets/Source.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("029b333d-8b96-4993-b5c1-78bf519502c2")]
		public virtual MyButton Source
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (MyButton)DslModeling::DomainRoleInfo.GetRolePlayer(this, SourceDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, SourceDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access Sources of a MyButton
		/// <summary>
		/// Gets a list of Sources.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static DslModeling::LinkedElementCollection<MyButton> GetSources(MyButton element)
		{
			return GetRoleCollection<DslModeling::LinkedElementCollection<MyButton>, MyButton>(element, TargetDomainRoleId);
		}
		#endregion
		#region Target domain role code
		
		/// <summary>
		/// Target domain role Id.
		/// </summary>
		public static readonly global::System.Guid TargetDomainRoleId = new global::System.Guid(0x3d37346b, 0x00e1, 0x4172, 0xbc, 0xdc, 0x34, 0xce, 0x3a, 0x8a, 0xd9, 0xa9);
		
		/// <summary>
		/// DomainRole Target
		/// Description for Company.MyDslRelation.ExampleRelationship.Source
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslRelation.MyButtonReferencesTargets/Target.DisplayName", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslRelation.MyButtonReferencesTargets/Target.Description", typeof(global::Company.MyDslRelation.MyDslRelationDomainModel), "Company.MyDslRelation.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Target, PropertyName = "Sources", PropertyDisplayNameKey="Company.MyDslRelation.MyButtonReferencesTargets/Target.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("3d37346b-00e1-4172-bcdc-34ce3a8ad9a9")]
		public virtual MyButton Target
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (MyButton)DslModeling::DomainRoleInfo.GetRolePlayer(this, TargetDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, TargetDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access Targets of a MyButton
		/// <summary>
		/// Gets a list of Targets.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static DslModeling::LinkedElementCollection<MyButton> GetTargets(MyButton element)
		{
			return GetRoleCollection<DslModeling::LinkedElementCollection<MyButton>, MyButton>(element, SourceDomainRoleId);
		}
		#endregion
		#region Source link accessor
		/// <summary>
		/// Get the list of MyButtonReferencesTargets links to a MyButton.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslRelation.MyButtonReferencesTargets> GetLinksToTargets ( global::Company.MyDslRelation.MyButton sourceInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslRelation.MyButtonReferencesTargets>(sourceInstance, global::Company.MyDslRelation.MyButtonReferencesTargets.SourceDomainRoleId);
		}
		#endregion
		#region Target link accessor
		/// <summary>
		/// Get the list of MyButtonReferencesTargets links to a MyButton.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslRelation.MyButtonReferencesTargets> GetLinksToSources ( global::Company.MyDslRelation.MyButton targetInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslRelation.MyButtonReferencesTargets>(targetInstance, global::Company.MyDslRelation.MyButtonReferencesTargets.TargetDomainRoleId);
		}
		#endregion
		#region MyButtonReferencesTargets instance accessors
		
		/// <summary>
		/// Get any MyButtonReferencesTargets links between a given MyButton and a MyButton.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslRelation.MyButtonReferencesTargets> GetLinks( global::Company.MyDslRelation.MyButton source, global::Company.MyDslRelation.MyButton target )
		{
			global::System.Collections.Generic.List<global::Company.MyDslRelation.MyButtonReferencesTargets> outLinks = new global::System.Collections.Generic.List<global::Company.MyDslRelation.MyButtonReferencesTargets>();
			global::System.Collections.Generic.IList<global::Company.MyDslRelation.MyButtonReferencesTargets> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslRelation.MyButtonReferencesTargets>(source, global::Company.MyDslRelation.MyButtonReferencesTargets.SourceDomainRoleId);
			foreach ( global::Company.MyDslRelation.MyButtonReferencesTargets link in links )
			{
				if ( target.Equals(link.Target) )
				{
					outLinks.Add(link);
				}
			}
			return outLinks.AsReadOnly();
		}
		/// <summary>
		/// Get the one MyButtonReferencesTargets link between a given MyButtonand a MyButton.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.MyDslRelation.MyButtonReferencesTargets GetLink( global::Company.MyDslRelation.MyButton source, global::Company.MyDslRelation.MyButton target )
		{
			global::System.Collections.Generic.IList<global::Company.MyDslRelation.MyButtonReferencesTargets> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslRelation.MyButtonReferencesTargets>(source, global::Company.MyDslRelation.MyButtonReferencesTargets.SourceDomainRoleId);
			foreach ( global::Company.MyDslRelation.MyButtonReferencesTargets link in links )
			{
				if ( target.Equals(link.Target) )
				{
					return link;
				}
			}
			return null;
		}
		
		#endregion
	}
}
