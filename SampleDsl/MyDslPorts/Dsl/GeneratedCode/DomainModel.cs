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
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
namespace Company.MyDslPorts
{
	/// <summary>
	/// DomainModel MyDslPortsDomainModel
	/// Description for Company.MyDslPorts.MyDslPorts
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslPorts.MyDslPortsDomainModel.DisplayName", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslPorts.MyDslPortsDomainModel.Description", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[global::System.CLSCompliant(true)]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.CoreDomainModel))]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.Diagrams.CoreDesignSurfaceDomainModel))]
	[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
	[DslModeling::DomainObjectId("dc5e28e4-d821-4303-83cb-76f16c27455d")]
	public partial class MyDslPortsDomainModel : DslModeling::DomainModel
	{
		#region Constructor, domain model Id
	
		/// <summary>
		/// MyDslPortsDomainModel domain model Id.
		/// </summary>
		public static readonly global::System.Guid DomainModelId = new global::System.Guid(0xdc5e28e4, 0xd821, 0x4303, 0x83, 0xcb, 0x76, 0xf1, 0x6c, 0x27, 0x45, 0x5d);
	
		/// <summary>
		/// Constructor.
		/// </summary>
		/// <param name="store">Store containing the domain model.</param>
		public MyDslPortsDomainModel(DslModeling::Store store)
			: base(store, DomainModelId)
		{
			// Call the partial method to allow any required serialization setup to be done.
			this.InitializeSerialization(store);		
		}
		
	
		///<Summary>
		/// Defines a partial method that will be called from the constructor to
		/// allow any necessary serialization setup to be done.
		///</Summary>
		///<remarks>
		/// For a DSL created with the DSL Designer wizard, an implementation of this 
		/// method will be generated in the GeneratedCode\SerializationHelper.cs class.
		///</remarks>
		partial void InitializeSerialization(DslModeling::Store store);
	
	
		#endregion
		#region Domain model reflection
			
		/// <summary>
		/// Gets the list of generated domain model types (classes, rules, relationships).
		/// </summary>
		/// <returns>List of types.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		protected sealed override global::System.Type[] GetGeneratedDomainModelTypes()
		{
			return new global::System.Type[]
			{
				typeof(NamedElement),
				typeof(ComponentModel),
				typeof(Component),
				typeof(ComponentPort),
				typeof(InPort),
				typeof(OutPort),
				typeof(Comment),
				typeof(Connection),
				typeof(ComponentHasPorts),
				typeof(ComponentModelHasComments),
				typeof(ComponentModelHasComponents),
				typeof(MyDslPortsDiagram),
				typeof(AssociationLink),
				typeof(ComponentShape),
				typeof(CommentBoxShape),
				typeof(InPortShape),
				typeof(OutPortShape),
				typeof(global::Company.MyDslPorts.FixUpDiagram),
				typeof(global::Company.MyDslPorts.DecoratorPropertyChanged),
				typeof(global::Company.MyDslPorts.ConnectorRolePlayerChanged),
			};
		}
		/// <summary>
		/// Gets the list of generated domain properties.
		/// </summary>
		/// <returns>List of property data.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		protected sealed override DomainMemberInfo[] GetGeneratedDomainProperties()
		{
			return new DomainMemberInfo[]
			{
				new DomainMemberInfo(typeof(NamedElement), "Name", NamedElement.NameDomainPropertyId, typeof(NamedElement.NamePropertyHandler)),
				new DomainMemberInfo(typeof(Component), "Kind", Component.KindDomainPropertyId, typeof(Component.KindPropertyHandler)),
				new DomainMemberInfo(typeof(Comment), "Text", Comment.TextDomainPropertyId, typeof(Comment.TextPropertyHandler)),
				new DomainMemberInfo(typeof(Connection), "SourceRoleName", Connection.SourceRoleNameDomainPropertyId, typeof(Connection.SourceRoleNamePropertyHandler)),
				new DomainMemberInfo(typeof(Connection), "TargetRoleName", Connection.TargetRoleNameDomainPropertyId, typeof(Connection.TargetRoleNamePropertyHandler)),
			};
		}
		/// <summary>
		/// Gets the list of generated domain roles.
		/// </summary>
		/// <returns>List of role data.</returns>
		protected sealed override DomainRolePlayerInfo[] GetGeneratedDomainRoles()
		{
			return new DomainRolePlayerInfo[]
			{
				new DomainRolePlayerInfo(typeof(Connection), "Source", Connection.SourceDomainRoleId),
				new DomainRolePlayerInfo(typeof(Connection), "Target", Connection.TargetDomainRoleId),
				new DomainRolePlayerInfo(typeof(ComponentHasPorts), "Component", ComponentHasPorts.ComponentDomainRoleId),
				new DomainRolePlayerInfo(typeof(ComponentHasPorts), "Port", ComponentHasPorts.PortDomainRoleId),
				new DomainRolePlayerInfo(typeof(ComponentModelHasComments), "ComponentModel", ComponentModelHasComments.ComponentModelDomainRoleId),
				new DomainRolePlayerInfo(typeof(ComponentModelHasComments), "Comment", ComponentModelHasComments.CommentDomainRoleId),
				new DomainRolePlayerInfo(typeof(ComponentModelHasComponents), "ComponentModel", ComponentModelHasComponents.ComponentModelDomainRoleId),
				new DomainRolePlayerInfo(typeof(ComponentModelHasComponents), "Component", ComponentModelHasComponents.ComponentDomainRoleId),
			};
		}
		#endregion
		#region Factory methods
		private static global::System.Collections.Generic.Dictionary<global::System.Type, int> createElementMap;
	
		/// <summary>
		/// Creates an element of specified type.
		/// </summary>
		/// <param name="partition">Partition where element is to be created.</param>
		/// <param name="elementType">Element type which belongs to this domain model.</param>
		/// <param name="propertyAssignments">New element property assignments.</param>
		/// <returns>Created element.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		public sealed override DslModeling::ModelElement CreateElement(DslModeling::Partition partition, global::System.Type elementType, DslModeling::PropertyAssignment[] propertyAssignments)
		{
			if (elementType == null) throw new global::System.ArgumentNullException("elementType");
	
			if (createElementMap == null)
			{
				createElementMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(13);
				createElementMap.Add(typeof(ComponentModel), 0);
				createElementMap.Add(typeof(Component), 1);
				createElementMap.Add(typeof(InPort), 2);
				createElementMap.Add(typeof(OutPort), 3);
				createElementMap.Add(typeof(Comment), 4);
				createElementMap.Add(typeof(MyDslPortsDiagram), 5);
				createElementMap.Add(typeof(AssociationLink), 6);
				createElementMap.Add(typeof(ComponentShape), 7);
				createElementMap.Add(typeof(CommentBoxShape), 8);
				createElementMap.Add(typeof(InPortShape), 9);
				createElementMap.Add(typeof(OutPortShape), 10);
			}
			int index;
			if (!createElementMap.TryGetValue(elementType, out index))
			{
				// construct exception error message		
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::Company.MyDslPorts.MyDslPortsDomainModel.SingletonResourceManager.GetString("UnrecognizedElementType"),
								elementType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementType");
			}
			switch (index)
			{
				case 0: return new ComponentModel(partition, propertyAssignments);
				case 1: return new Component(partition, propertyAssignments);
				case 2: return new InPort(partition, propertyAssignments);
				case 3: return new OutPort(partition, propertyAssignments);
				case 4: return new Comment(partition, propertyAssignments);
				case 5: return new MyDslPortsDiagram(partition, propertyAssignments);
				case 6: return new AssociationLink(partition, propertyAssignments);
				case 7: return new ComponentShape(partition, propertyAssignments);
				case 8: return new CommentBoxShape(partition, propertyAssignments);
				case 9: return new InPortShape(partition, propertyAssignments);
				case 10: return new OutPortShape(partition, propertyAssignments);
				default: return null;
			}
		}
	
		private static global::System.Collections.Generic.Dictionary<global::System.Type, int> createElementLinkMap;
	
		/// <summary>
		/// Creates an element link of specified type.
		/// </summary>
		/// <param name="partition">Partition where element is to be created.</param>
		/// <param name="elementLinkType">Element link type which belongs to this domain model.</param>
		/// <param name="roleAssignments">List of relationship role assignments for the new link.</param>
		/// <param name="propertyAssignments">New element property assignments.</param>
		/// <returns>Created element link.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
		public sealed override DslModeling::ElementLink CreateElementLink(DslModeling::Partition partition, global::System.Type elementLinkType, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
		{
			if (elementLinkType == null) throw new global::System.ArgumentNullException("elementLinkType");
			if (roleAssignments == null) throw new global::System.ArgumentNullException("roleAssignments");
	
			if (createElementLinkMap == null)
			{
				createElementLinkMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(4);
				createElementLinkMap.Add(typeof(Connection), 0);
				createElementLinkMap.Add(typeof(ComponentHasPorts), 1);
				createElementLinkMap.Add(typeof(ComponentModelHasComments), 2);
				createElementLinkMap.Add(typeof(ComponentModelHasComponents), 3);
			}
			int index;
			if (!createElementLinkMap.TryGetValue(elementLinkType, out index))
			{
				// construct exception error message
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::Company.MyDslPorts.MyDslPortsDomainModel.SingletonResourceManager.GetString("UnrecognizedElementLinkType"),
								elementLinkType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementLinkType");
			
			}
			switch (index)
			{
				case 0: return new Connection(partition, roleAssignments, propertyAssignments);
				case 1: return new ComponentHasPorts(partition, roleAssignments, propertyAssignments);
				case 2: return new ComponentModelHasComments(partition, roleAssignments, propertyAssignments);
				case 3: return new ComponentModelHasComponents(partition, roleAssignments, propertyAssignments);
				default: return null;
			}
		}
		#endregion
		#region Resource manager
		
		private static global::System.Resources.ResourceManager resourceManager;
		
		/// <summary>
		/// The base name of this model's resources.
		/// </summary>
		public const string ResourceBaseName = "Company.MyDslPorts.GeneratedCode.DomainModelResx";
		
		/// <summary>
		/// Gets the DomainModel's ResourceManager. If the ResourceManager does not already exist, then it is created.
		/// </summary>
		public override global::System.Resources.ResourceManager ResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return MyDslPortsDomainModel.SingletonResourceManager;
			}
		}
	
		/// <summary>
		/// Gets the Singleton ResourceManager for this domain model.
		/// </summary>
		public static global::System.Resources.ResourceManager SingletonResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				if (MyDslPortsDomainModel.resourceManager == null)
				{
					MyDslPortsDomainModel.resourceManager = new global::System.Resources.ResourceManager(ResourceBaseName, typeof(MyDslPortsDomainModel).Assembly);
				}
				return MyDslPortsDomainModel.resourceManager;
			}
		}
		#endregion
		#region Copy/Remove closures
		/// <summary>
		/// CopyClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter copyClosure;
		/// <summary>
		/// DeleteClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter removeClosure;
		/// <summary>
		/// Returns an IElementVisitorFilter that corresponds to the ClosureType.
		/// </summary>
		/// <param name="type">closure type</param>
		/// <param name="rootElements">collection of root elements</param>
		/// <returns>IElementVisitorFilter or null</returns>
		public override DslModeling::IElementVisitorFilter GetClosureFilter(DslModeling::ClosureType type, global::System.Collections.Generic.ICollection<DslModeling::ModelElement> rootElements)
		{
			switch (type)
			{
				case DslModeling::ClosureType.CopyClosure:
					return MyDslPortsDomainModel.CopyClosure;
				case DslModeling::ClosureType.DeleteClosure:
					return MyDslPortsDomainModel.DeleteClosure;
			}
			return base.GetClosureFilter(type, rootElements);
		}
		/// <summary>
		/// CopyClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter CopyClosure
		{
			get
			{
				// Incorporate all of the closures from the models we extend
				if (MyDslPortsDomainModel.copyClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter copyFilter = new DslModeling::ChainingElementVisitorFilter();
					copyFilter.AddFilter(new MyDslPortsCopyClosure());
					copyFilter.AddFilter(new DslModeling::CoreCopyClosure());
					copyFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceCopyClosure());
					
					MyDslPortsDomainModel.copyClosure = copyFilter;
				}
				return MyDslPortsDomainModel.copyClosure;
			}
		}
		/// <summary>
		/// DeleteClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter DeleteClosure
		{
			get
			{
				// Incorporate all of the closures from the models we extend
				if (MyDslPortsDomainModel.removeClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter removeFilter = new DslModeling::ChainingElementVisitorFilter();
					removeFilter.AddFilter(new MyDslPortsDeleteClosure());
					removeFilter.AddFilter(new DslModeling::CoreDeleteClosure());
					removeFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceDeleteClosure());
		
					MyDslPortsDomainModel.removeClosure = removeFilter;
				}
				return MyDslPortsDomainModel.removeClosure;
			}
		}
		#endregion
		#region Diagram rule helpers
		/// <summary>
		/// Enables rules in this domain model related to diagram fixup for the given store.
		/// If diagram data will be loaded into the store, this method should be called first to ensure
		/// that the diagram behaves properly.
		/// </summary>
		public static void EnableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.EnableRule(typeof(global::Company.MyDslPorts.FixUpDiagram));
			ruleManager.EnableRule(typeof(global::Company.MyDslPorts.DecoratorPropertyChanged));
			ruleManager.EnableRule(typeof(global::Company.MyDslPorts.ConnectorRolePlayerChanged));
		}
		
		/// <summary>
		/// Disables rules in this domain model related to diagram fixup for the given store.
		/// </summary>
		public static void DisableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.DisableRule(typeof(global::Company.MyDslPorts.FixUpDiagram));
			ruleManager.DisableRule(typeof(global::Company.MyDslPorts.DecoratorPropertyChanged));
			ruleManager.DisableRule(typeof(global::Company.MyDslPorts.ConnectorRolePlayerChanged));
		}
		#endregion
	}
		
	#region Copy/Remove closure classes
	/// <summary>
	/// Remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class MyDslPortsDeleteClosure : MyDslPortsDeleteClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public MyDslPortsDeleteClosure() : base()
		{
		}
	}
	
	/// <summary>
	/// Base class for remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class MyDslPortsDeleteClosureBase : DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary domainRoles;
		/// <summary>
		/// Constructor
		/// </summary>
		public MyDslPortsDeleteClosureBase()
		{
			#region Initialize DomainData Table
			DomainRoles.Add(global::Company.MyDslPorts.ComponentHasPorts.PortDomainRoleId, true);
			DomainRoles.Add(global::Company.MyDslPorts.ComponentModelHasComments.CommentDomainRoleId, true);
			DomainRoles.Add(global::Company.MyDslPorts.ComponentModelHasComponents.ComponentDomainRoleId, true);
			#endregion
		}
		/// <summary>
		/// Called to ask the filter if a particular relationship from a source element should be included in the traversal
		/// </summary>
		/// <param name="walker">ElementWalker that is traversing the model</param>
		/// <param name="sourceElement">Model Element playing the source role</param>
		/// <param name="sourceRoleInfo">DomainRoleInfo of the role that the source element is playing in the relationship</param>
		/// <param name="domainRelationshipInfo">DomainRelationshipInfo for the ElementLink in question</param>
		/// <param name="targetRelationship">Relationship in question</param>
		/// <returns>Yes if the relationship should be traversed</returns>
		public virtual DslModeling::VisitorFilterResult ShouldVisitRelationship(DslModeling::ElementWalker walker, DslModeling::ModelElement sourceElement, DslModeling::DomainRoleInfo sourceRoleInfo, DslModeling::DomainRelationshipInfo domainRelationshipInfo, DslModeling::ElementLink targetRelationship)
		{
			return DslModeling::VisitorFilterResult.Yes;
		}
		/// <summary>
		/// Called to ask the filter if a particular role player should be Visited during traversal
		/// </summary>
		/// <param name="walker">ElementWalker that is traversing the model</param>
		/// <param name="sourceElement">Model Element playing the source role</param>
		/// <param name="elementLink">Element Link that forms the relationship to the role player in question</param>
		/// <param name="targetDomainRole">DomainRoleInfo of the target role</param>
		/// <param name="targetRolePlayer">Model Element that plays the target role in the relationship</param>
		/// <returns></returns>
		public virtual DslModeling::VisitorFilterResult ShouldVisitRolePlayer(DslModeling::ElementWalker walker, DslModeling::ModelElement sourceElement, DslModeling::ElementLink elementLink, DslModeling::DomainRoleInfo targetDomainRole, DslModeling::ModelElement targetRolePlayer)
		{
			if (targetDomainRole == null) throw new global::System.ArgumentNullException("targetDomainRole");
			return this.DomainRoles.Contains(targetDomainRole.Id) ? DslModeling::VisitorFilterResult.Yes : DslModeling::VisitorFilterResult.DoNotCare;
		}
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary DomainRoles
		{
			get
			{
				if (this.domainRoles == null)
				{
					this.domainRoles = new global::System.Collections.Specialized.HybridDictionary();
				}
				return this.domainRoles;
			}
		}
	
	}
	/// <summary>
	/// Copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class MyDslPortsCopyClosure : MyDslPortsCopyClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public MyDslPortsCopyClosure() : base()
		{
		}
	}
	/// <summary>
	/// Base class for copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class MyDslPortsCopyClosureBase : DslModeling::CopyClosureFilter, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public MyDslPortsCopyClosureBase():base()
		{
		}
	}
	#endregion
		
}

