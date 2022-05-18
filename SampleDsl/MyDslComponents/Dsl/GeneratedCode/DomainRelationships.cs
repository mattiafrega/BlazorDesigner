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
namespace Company.MyDslComponents
{
	/// <summary>
	/// DomainRelationship ExampleModelHasElements
	/// Embedding relationship between the Model and Elements
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasElements.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasElements.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainRelationship(IsEmbedding=true)]
	[DslModeling::DomainObjectId("47dccd67-a58d-4a32-a17d-b214354dc8b1")]
	public partial class ExampleModelHasElements : DslModeling::ElementLink
	{
		#region Constructors, domain class Id
		
		/// <summary>
		/// ExampleModelHasElements domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x47dccd67, 0xa58d, 0x4a32, 0xa1, 0x7d, 0xb2, 0x14, 0x35, 0x4d, 0xc8, 0xb1);
	
				
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
		public static readonly global::System.Guid ExampleModelDomainRoleId = new global::System.Guid(0xe2991666, 0x69ee, 0x4198, 0xaa, 0x74, 0x58, 0xb7, 0x49, 0x11, 0x19, 0xd5);
		
		/// <summary>
		/// DomainRole ExampleModel
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasElements/ExampleModel.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasElements/ExampleModel.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Source, PropertyName = "Elements", PropertyDisplayNameKey="Company.MyDslComponents.ExampleModelHasElements/ExampleModel.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.PropagatesCopyToLinkAndOppositeRolePlayer, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("e2991666-69ee-4198-aa74-58b7491119d5")]
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
		public static readonly global::System.Guid ElementDomainRoleId = new global::System.Guid(0x3f31746e, 0xf47c, 0x4609, 0xad, 0x2b, 0x68, 0x58, 0x7b, 0xde, 0xea, 0x78);
		
		/// <summary>
		/// DomainRole Element
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasElements/Element.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasElements/Element.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Target, PropertyName = "ExampleModel", PropertyDisplayNameKey="Company.MyDslComponents.ExampleModelHasElements/Element.PropertyDisplayName", PropagatesDelete = true,  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.One)]
		[DslModeling::DomainObjectId("3f31746e-f47c-4609-ad2b-68587bdeea78")]
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
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslComponents.ExampleModelHasElements> GetLinksToElements ( global::Company.MyDslComponents.ExampleModel exampleModelInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasElements>(exampleModelInstance, global::Company.MyDslComponents.ExampleModelHasElements.ExampleModelDomainRoleId);
		}
		#endregion
		#region Element link accessor
		/// <summary>
		/// Get the ExampleModelHasElements link to a MyButton.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.MyDslComponents.ExampleModelHasElements GetLinkToExampleModel (global::Company.MyDslComponents.MyButton elementInstance)
		{
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasElements>(elementInstance, global::Company.MyDslComponents.ExampleModelHasElements.ElementDomainRoleId);
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
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslComponents.ExampleModelHasElements> GetLinks( global::Company.MyDslComponents.ExampleModel source, global::Company.MyDslComponents.MyButton target )
		{
			global::System.Collections.Generic.List<global::Company.MyDslComponents.ExampleModelHasElements> outLinks = new global::System.Collections.Generic.List<global::Company.MyDslComponents.ExampleModelHasElements>();
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasElements>(source, global::Company.MyDslComponents.ExampleModelHasElements.ExampleModelDomainRoleId);
			foreach ( global::Company.MyDslComponents.ExampleModelHasElements link in links )
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
		public static global::Company.MyDslComponents.ExampleModelHasElements GetLink( global::Company.MyDslComponents.ExampleModel source, global::Company.MyDslComponents.MyButton target )
		{
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasElements>(source, global::Company.MyDslComponents.ExampleModelHasElements.ExampleModelDomainRoleId);
			foreach ( global::Company.MyDslComponents.ExampleModelHasElements link in links )
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
namespace Company.MyDslComponents
{
	/// <summary>
	/// DomainRelationship ExampleModelHasMyTextbox
	/// Description for Company.MyDslComponents.ExampleModelHasMyTextbox
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasMyTextbox.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasMyTextbox.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainRelationship(IsEmbedding=true)]
	[DslModeling::DomainObjectId("5e70a1f5-bb3f-4c63-9e68-a703280841a8")]
	public partial class ExampleModelHasMyTextbox : DslModeling::ElementLink
	{
		#region Constructors, domain class Id
		
		/// <summary>
		/// ExampleModelHasMyTextbox domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x5e70a1f5, 0xbb3f, 0x4c63, 0x9e, 0x68, 0xa7, 0x03, 0x28, 0x08, 0x41, 0xa8);
	
				
		/// <summary>
		/// Constructor
		/// Creates a ExampleModelHasMyTextbox link in the same Partition as the given ExampleModel
		/// </summary>
		/// <param name="source">ExampleModel to use as the source of the relationship.</param>
		/// <param name="target">MyTextbox to use as the target of the relationship.</param>
		public ExampleModelHasMyTextbox(ExampleModel source, MyTextbox target)
			: base((source != null ? source.Partition : null), new DslModeling::RoleAssignment[]{new DslModeling::RoleAssignment(ExampleModelHasMyTextbox.ExampleModelDomainRoleId, source), new DslModeling::RoleAssignment(ExampleModelHasMyTextbox.MyTextboxDomainRoleId, target)}, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public ExampleModelHasMyTextbox(DslModeling::Store store, params DslModeling::RoleAssignment[] roleAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public ExampleModelHasMyTextbox(DslModeling::Store store, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public ExampleModelHasMyTextbox(DslModeling::Partition partition, params DslModeling::RoleAssignment[] roleAssignments)
			: base(partition, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public ExampleModelHasMyTextbox(DslModeling::Partition partition, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, roleAssignments, propertyAssignments)
		{
		}
		#endregion
		#region ExampleModel domain role code
		
		/// <summary>
		/// ExampleModel domain role Id.
		/// </summary>
		public static readonly global::System.Guid ExampleModelDomainRoleId = new global::System.Guid(0x71edb545, 0x64db, 0x4cdf, 0xb0, 0x7a, 0xb9, 0x78, 0x8f, 0xeb, 0xc6, 0x56);
		
		/// <summary>
		/// DomainRole ExampleModel
		/// Description for Company.MyDslComponents.ExampleModelHasMyTextbox.ExampleModel
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasMyTextbox/ExampleModel.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasMyTextbox/ExampleModel.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Source, PropertyName = "MyTextbox", PropertyDisplayNameKey="Company.MyDslComponents.ExampleModelHasMyTextbox/ExampleModel.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.PropagatesCopyToLinkAndOppositeRolePlayer, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("71edb545-64db-4cdf-b07a-b9788febc656")]
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
		#region Static methods to access ExampleModel of a MyTextbox
		/// <summary>
		/// Gets ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static ExampleModel GetExampleModel(MyTextbox element)
		{
			return DslModeling::DomainRoleInfo.GetLinkedElement(element, MyTextboxDomainRoleId) as ExampleModel;
		}
		
		/// <summary>
		/// Sets ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static void SetExampleModel(MyTextbox element, ExampleModel newExampleModel)
		{
			DslModeling::DomainRoleInfo.SetLinkedElement(element, MyTextboxDomainRoleId, newExampleModel);
		}
		#endregion
		#region MyTextbox domain role code
		
		/// <summary>
		/// MyTextbox domain role Id.
		/// </summary>
		public static readonly global::System.Guid MyTextboxDomainRoleId = new global::System.Guid(0x140de811, 0x94d0, 0x40b0, 0x88, 0x41, 0x5e, 0x75, 0x58, 0x5f, 0x75, 0x7d);
		
		/// <summary>
		/// DomainRole MyTextbox
		/// Description for Company.MyDslComponents.ExampleModelHasMyTextbox.MyTextbox
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasMyTextbox/MyTextbox.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasMyTextbox/MyTextbox.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Target, PropertyName = "ExampleModel", PropertyDisplayNameKey="Company.MyDslComponents.ExampleModelHasMyTextbox/MyTextbox.PropertyDisplayName", PropagatesDelete = true,  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.One)]
		[DslModeling::DomainObjectId("140de811-94d0-40b0-8841-5e75585f757d")]
		public virtual MyTextbox MyTextbox
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (MyTextbox)DslModeling::DomainRoleInfo.GetRolePlayer(this, MyTextboxDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, MyTextboxDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access MyTextbox of a ExampleModel
		/// <summary>
		/// Gets a list of MyTextbox.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static DslModeling::LinkedElementCollection<MyTextbox> GetMyTextbox(ExampleModel element)
		{
			return GetRoleCollection<DslModeling::LinkedElementCollection<MyTextbox>, MyTextbox>(element, ExampleModelDomainRoleId);
		}
		#endregion
		#region ExampleModel link accessor
		/// <summary>
		/// Get the list of ExampleModelHasMyTextbox links to a ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslComponents.ExampleModelHasMyTextbox> GetLinksToMyTextbox ( global::Company.MyDslComponents.ExampleModel exampleModelInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasMyTextbox>(exampleModelInstance, global::Company.MyDslComponents.ExampleModelHasMyTextbox.ExampleModelDomainRoleId);
		}
		#endregion
		#region MyTextbox link accessor
		/// <summary>
		/// Get the ExampleModelHasMyTextbox link to a MyTextbox.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.MyDslComponents.ExampleModelHasMyTextbox GetLinkToExampleModel (global::Company.MyDslComponents.MyTextbox myTextboxInstance)
		{
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasMyTextbox> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasMyTextbox>(myTextboxInstance, global::Company.MyDslComponents.ExampleModelHasMyTextbox.MyTextboxDomainRoleId);
			global::System.Diagnostics.Debug.Assert(links.Count <= 1, "Multiplicity of MyTextbox not obeyed.");
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
		#region ExampleModelHasMyTextbox instance accessors
		
		/// <summary>
		/// Get any ExampleModelHasMyTextbox links between a given ExampleModel and a MyTextbox.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslComponents.ExampleModelHasMyTextbox> GetLinks( global::Company.MyDslComponents.ExampleModel source, global::Company.MyDslComponents.MyTextbox target )
		{
			global::System.Collections.Generic.List<global::Company.MyDslComponents.ExampleModelHasMyTextbox> outLinks = new global::System.Collections.Generic.List<global::Company.MyDslComponents.ExampleModelHasMyTextbox>();
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasMyTextbox> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasMyTextbox>(source, global::Company.MyDslComponents.ExampleModelHasMyTextbox.ExampleModelDomainRoleId);
			foreach ( global::Company.MyDslComponents.ExampleModelHasMyTextbox link in links )
			{
				if ( target.Equals(link.MyTextbox) )
				{
					outLinks.Add(link);
				}
			}
			return outLinks.AsReadOnly();
		}
		/// <summary>
		/// Get the one ExampleModelHasMyTextbox link between a given ExampleModeland a MyTextbox.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.MyDslComponents.ExampleModelHasMyTextbox GetLink( global::Company.MyDslComponents.ExampleModel source, global::Company.MyDslComponents.MyTextbox target )
		{
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasMyTextbox> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasMyTextbox>(source, global::Company.MyDslComponents.ExampleModelHasMyTextbox.ExampleModelDomainRoleId);
			foreach ( global::Company.MyDslComponents.ExampleModelHasMyTextbox link in links )
			{
				if ( target.Equals(link.MyTextbox) )
				{
					return link;
				}
			}
			return null;
		}
		
		#endregion
	}
}
namespace Company.MyDslComponents
{
	/// <summary>
	/// DomainRelationship ExampleModelHasMyGauge
	/// Description for Company.MyDslComponents.ExampleModelHasMyGauge
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasMyGauge.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasMyGauge.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainRelationship(IsEmbedding=true)]
	[DslModeling::DomainObjectId("e84b9f4e-9720-4c0b-9d9d-76cca2df366d")]
	public partial class ExampleModelHasMyGauge : DslModeling::ElementLink
	{
		#region Constructors, domain class Id
		
		/// <summary>
		/// ExampleModelHasMyGauge domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xe84b9f4e, 0x9720, 0x4c0b, 0x9d, 0x9d, 0x76, 0xcc, 0xa2, 0xdf, 0x36, 0x6d);
	
				
		/// <summary>
		/// Constructor
		/// Creates a ExampleModelHasMyGauge link in the same Partition as the given ExampleModel
		/// </summary>
		/// <param name="source">ExampleModel to use as the source of the relationship.</param>
		/// <param name="target">MyGauge to use as the target of the relationship.</param>
		public ExampleModelHasMyGauge(ExampleModel source, MyGauge target)
			: base((source != null ? source.Partition : null), new DslModeling::RoleAssignment[]{new DslModeling::RoleAssignment(ExampleModelHasMyGauge.ExampleModelDomainRoleId, source), new DslModeling::RoleAssignment(ExampleModelHasMyGauge.MyGaugeDomainRoleId, target)}, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public ExampleModelHasMyGauge(DslModeling::Store store, params DslModeling::RoleAssignment[] roleAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public ExampleModelHasMyGauge(DslModeling::Store store, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public ExampleModelHasMyGauge(DslModeling::Partition partition, params DslModeling::RoleAssignment[] roleAssignments)
			: base(partition, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public ExampleModelHasMyGauge(DslModeling::Partition partition, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, roleAssignments, propertyAssignments)
		{
		}
		#endregion
		#region ExampleModel domain role code
		
		/// <summary>
		/// ExampleModel domain role Id.
		/// </summary>
		public static readonly global::System.Guid ExampleModelDomainRoleId = new global::System.Guid(0x73c88474, 0xc94b, 0x44bf, 0x9a, 0x8a, 0x1d, 0xe5, 0xb6, 0x22, 0xc6, 0x91);
		
		/// <summary>
		/// DomainRole ExampleModel
		/// Description for Company.MyDslComponents.ExampleModelHasMyGauge.ExampleModel
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasMyGauge/ExampleModel.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasMyGauge/ExampleModel.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Source, PropertyName = "MyGauge", PropertyDisplayNameKey="Company.MyDslComponents.ExampleModelHasMyGauge/ExampleModel.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.PropagatesCopyToLinkAndOppositeRolePlayer, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("73c88474-c94b-44bf-9a8a-1de5b622c691")]
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
		#region Static methods to access ExampleModel of a MyGauge
		/// <summary>
		/// Gets ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static ExampleModel GetExampleModel(MyGauge element)
		{
			return DslModeling::DomainRoleInfo.GetLinkedElement(element, MyGaugeDomainRoleId) as ExampleModel;
		}
		
		/// <summary>
		/// Sets ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static void SetExampleModel(MyGauge element, ExampleModel newExampleModel)
		{
			DslModeling::DomainRoleInfo.SetLinkedElement(element, MyGaugeDomainRoleId, newExampleModel);
		}
		#endregion
		#region MyGauge domain role code
		
		/// <summary>
		/// MyGauge domain role Id.
		/// </summary>
		public static readonly global::System.Guid MyGaugeDomainRoleId = new global::System.Guid(0x8e2c5289, 0xa743, 0x4d4a, 0xb7, 0xbd, 0xc3, 0x65, 0x17, 0xeb, 0x57, 0x10);
		
		/// <summary>
		/// DomainRole MyGauge
		/// Description for Company.MyDslComponents.ExampleModelHasMyGauge.MyGauge
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslComponents.ExampleModelHasMyGauge/MyGauge.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslComponents.ExampleModelHasMyGauge/MyGauge.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Target, PropertyName = "ExampleModel", PropertyDisplayNameKey="Company.MyDslComponents.ExampleModelHasMyGauge/MyGauge.PropertyDisplayName", PropagatesDelete = true,  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.One)]
		[DslModeling::DomainObjectId("8e2c5289-a743-4d4a-b7bd-c36517eb5710")]
		public virtual MyGauge MyGauge
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (MyGauge)DslModeling::DomainRoleInfo.GetRolePlayer(this, MyGaugeDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, MyGaugeDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access MyGauge of a ExampleModel
		/// <summary>
		/// Gets a list of MyGauge.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static DslModeling::LinkedElementCollection<MyGauge> GetMyGauge(ExampleModel element)
		{
			return GetRoleCollection<DslModeling::LinkedElementCollection<MyGauge>, MyGauge>(element, ExampleModelDomainRoleId);
		}
		#endregion
		#region ExampleModel link accessor
		/// <summary>
		/// Get the list of ExampleModelHasMyGauge links to a ExampleModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslComponents.ExampleModelHasMyGauge> GetLinksToMyGauge ( global::Company.MyDslComponents.ExampleModel exampleModelInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasMyGauge>(exampleModelInstance, global::Company.MyDslComponents.ExampleModelHasMyGauge.ExampleModelDomainRoleId);
		}
		#endregion
		#region MyGauge link accessor
		/// <summary>
		/// Get the ExampleModelHasMyGauge link to a MyGauge.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.MyDslComponents.ExampleModelHasMyGauge GetLinkToExampleModel (global::Company.MyDslComponents.MyGauge myGaugeInstance)
		{
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasMyGauge> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasMyGauge>(myGaugeInstance, global::Company.MyDslComponents.ExampleModelHasMyGauge.MyGaugeDomainRoleId);
			global::System.Diagnostics.Debug.Assert(links.Count <= 1, "Multiplicity of MyGauge not obeyed.");
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
		#region ExampleModelHasMyGauge instance accessors
		
		/// <summary>
		/// Get any ExampleModelHasMyGauge links between a given ExampleModel and a MyGauge.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.MyDslComponents.ExampleModelHasMyGauge> GetLinks( global::Company.MyDslComponents.ExampleModel source, global::Company.MyDslComponents.MyGauge target )
		{
			global::System.Collections.Generic.List<global::Company.MyDslComponents.ExampleModelHasMyGauge> outLinks = new global::System.Collections.Generic.List<global::Company.MyDslComponents.ExampleModelHasMyGauge>();
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasMyGauge> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasMyGauge>(source, global::Company.MyDslComponents.ExampleModelHasMyGauge.ExampleModelDomainRoleId);
			foreach ( global::Company.MyDslComponents.ExampleModelHasMyGauge link in links )
			{
				if ( target.Equals(link.MyGauge) )
				{
					outLinks.Add(link);
				}
			}
			return outLinks.AsReadOnly();
		}
		/// <summary>
		/// Get the one ExampleModelHasMyGauge link between a given ExampleModeland a MyGauge.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.MyDslComponents.ExampleModelHasMyGauge GetLink( global::Company.MyDslComponents.ExampleModel source, global::Company.MyDslComponents.MyGauge target )
		{
			global::System.Collections.Generic.IList<global::Company.MyDslComponents.ExampleModelHasMyGauge> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.MyDslComponents.ExampleModelHasMyGauge>(source, global::Company.MyDslComponents.ExampleModelHasMyGauge.ExampleModelDomainRoleId);
			foreach ( global::Company.MyDslComponents.ExampleModelHasMyGauge link in links )
			{
				if ( target.Equals(link.MyGauge) )
				{
					return link;
				}
			}
			return null;
		}
		
		#endregion
	}
}