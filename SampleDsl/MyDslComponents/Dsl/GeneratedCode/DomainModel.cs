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
namespace Company.MyDslComponents
{
	/// <summary>
	/// DomainModel MyDslComponentsDomainModel
	/// Description for Company.MyDslComponents.MyDslComponents
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslComponents.MyDslComponentsDomainModel.DisplayName", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslComponents.MyDslComponentsDomainModel.Description", typeof(global::Company.MyDslComponents.MyDslComponentsDomainModel), "Company.MyDslComponents.GeneratedCode.DomainModelResx")]
	[global::System.CLSCompliant(true)]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.CoreDomainModel))]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.Diagrams.CoreDesignSurfaceDomainModel))]
	[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
	[DslModeling::DomainObjectId("38476d44-74a2-4891-bdf5-b5d2b9c42dcb")]
	public partial class MyDslComponentsDomainModel : DslModeling::DomainModel
	{
		#region Constructor, domain model Id
	
		/// <summary>
		/// MyDslComponentsDomainModel domain model Id.
		/// </summary>
		public static readonly global::System.Guid DomainModelId = new global::System.Guid(0x38476d44, 0x74a2, 0x4891, 0xbd, 0xf5, 0xb5, 0xd2, 0xb9, 0xc4, 0x2d, 0xcb);
	
		/// <summary>
		/// Constructor.
		/// </summary>
		/// <param name="store">Store containing the domain model.</param>
		public MyDslComponentsDomainModel(DslModeling::Store store)
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
				typeof(ExampleModel),
				typeof(MyButton),
				typeof(MyTextbox),
				typeof(MyGauge),
				typeof(MyComponent),
				typeof(ExampleModelHasElements),
				typeof(ExampleModelHasMyTextbox),
				typeof(ExampleModelHasMyGauge),
				typeof(MyDslComponentsDiagram),
				typeof(MyButtonShape),
				typeof(MyTextboxShape),
				typeof(MyGaugeShape),
				typeof(global::Company.MyDslComponents.FixUpDiagram),
				typeof(global::Company.MyDslComponents.DecoratorPropertyChanged),
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
				new DomainMemberInfo(typeof(MyButton), "Name", MyButton.NameDomainPropertyId, typeof(MyButton.NamePropertyHandler)),
				new DomainMemberInfo(typeof(MyButton), "Text", MyButton.TextDomainPropertyId, typeof(MyButton.TextPropertyHandler)),
				new DomainMemberInfo(typeof(MyTextbox), "Name", MyTextbox.NameDomainPropertyId, typeof(MyTextbox.NamePropertyHandler)),
				new DomainMemberInfo(typeof(MyTextbox), "Text", MyTextbox.TextDomainPropertyId, typeof(MyTextbox.TextPropertyHandler)),
				new DomainMemberInfo(typeof(MyGauge), "RangeStart", MyGauge.RangeStartDomainPropertyId, typeof(MyGauge.RangeStartPropertyHandler)),
				new DomainMemberInfo(typeof(MyGauge), "RangeEnd", MyGauge.RangeEndDomainPropertyId, typeof(MyGauge.RangeEndPropertyHandler)),
				new DomainMemberInfo(typeof(MyGauge), "Name", MyGauge.NameDomainPropertyId, typeof(MyGauge.NamePropertyHandler)),
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
				new DomainRolePlayerInfo(typeof(ExampleModelHasElements), "ExampleModel", ExampleModelHasElements.ExampleModelDomainRoleId),
				new DomainRolePlayerInfo(typeof(ExampleModelHasElements), "Element", ExampleModelHasElements.ElementDomainRoleId),
				new DomainRolePlayerInfo(typeof(ExampleModelHasMyTextbox), "ExampleModel", ExampleModelHasMyTextbox.ExampleModelDomainRoleId),
				new DomainRolePlayerInfo(typeof(ExampleModelHasMyTextbox), "MyTextbox", ExampleModelHasMyTextbox.MyTextboxDomainRoleId),
				new DomainRolePlayerInfo(typeof(ExampleModelHasMyGauge), "ExampleModel", ExampleModelHasMyGauge.ExampleModelDomainRoleId),
				new DomainRolePlayerInfo(typeof(ExampleModelHasMyGauge), "MyGauge", ExampleModelHasMyGauge.MyGaugeDomainRoleId),
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
				createElementMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(9);
				createElementMap.Add(typeof(ExampleModel), 0);
				createElementMap.Add(typeof(MyButton), 1);
				createElementMap.Add(typeof(MyTextbox), 2);
				createElementMap.Add(typeof(MyGauge), 3);
				createElementMap.Add(typeof(MyDslComponentsDiagram), 4);
				createElementMap.Add(typeof(MyButtonShape), 5);
				createElementMap.Add(typeof(MyTextboxShape), 6);
				createElementMap.Add(typeof(MyGaugeShape), 7);
			}
			int index;
			if (!createElementMap.TryGetValue(elementType, out index))
			{
				// construct exception error message		
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::Company.MyDslComponents.MyDslComponentsDomainModel.SingletonResourceManager.GetString("UnrecognizedElementType"),
								elementType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementType");
			}
			switch (index)
			{
				case 0: return new ExampleModel(partition, propertyAssignments);
				case 1: return new MyButton(partition, propertyAssignments);
				case 2: return new MyTextbox(partition, propertyAssignments);
				case 3: return new MyGauge(partition, propertyAssignments);
				case 4: return new MyDslComponentsDiagram(partition, propertyAssignments);
				case 5: return new MyButtonShape(partition, propertyAssignments);
				case 6: return new MyTextboxShape(partition, propertyAssignments);
				case 7: return new MyGaugeShape(partition, propertyAssignments);
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
				createElementLinkMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(3);
				createElementLinkMap.Add(typeof(ExampleModelHasElements), 0);
				createElementLinkMap.Add(typeof(ExampleModelHasMyTextbox), 1);
				createElementLinkMap.Add(typeof(ExampleModelHasMyGauge), 2);
			}
			int index;
			if (!createElementLinkMap.TryGetValue(elementLinkType, out index))
			{
				// construct exception error message
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::Company.MyDslComponents.MyDslComponentsDomainModel.SingletonResourceManager.GetString("UnrecognizedElementLinkType"),
								elementLinkType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementLinkType");
			
			}
			switch (index)
			{
				case 0: return new ExampleModelHasElements(partition, roleAssignments, propertyAssignments);
				case 1: return new ExampleModelHasMyTextbox(partition, roleAssignments, propertyAssignments);
				case 2: return new ExampleModelHasMyGauge(partition, roleAssignments, propertyAssignments);
				default: return null;
			}
		}
		#endregion
		#region Resource manager
		
		private static global::System.Resources.ResourceManager resourceManager;
		
		/// <summary>
		/// The base name of this model's resources.
		/// </summary>
		public const string ResourceBaseName = "Company.MyDslComponents.GeneratedCode.DomainModelResx";
		
		/// <summary>
		/// Gets the DomainModel's ResourceManager. If the ResourceManager does not already exist, then it is created.
		/// </summary>
		public override global::System.Resources.ResourceManager ResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return MyDslComponentsDomainModel.SingletonResourceManager;
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
				if (MyDslComponentsDomainModel.resourceManager == null)
				{
					MyDslComponentsDomainModel.resourceManager = new global::System.Resources.ResourceManager(ResourceBaseName, typeof(MyDslComponentsDomainModel).Assembly);
				}
				return MyDslComponentsDomainModel.resourceManager;
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
					return MyDslComponentsDomainModel.CopyClosure;
				case DslModeling::ClosureType.DeleteClosure:
					return MyDslComponentsDomainModel.DeleteClosure;
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
				if (MyDslComponentsDomainModel.copyClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter copyFilter = new DslModeling::ChainingElementVisitorFilter();
					copyFilter.AddFilter(new MyDslComponentsCopyClosure());
					copyFilter.AddFilter(new DslModeling::CoreCopyClosure());
					copyFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceCopyClosure());
					
					MyDslComponentsDomainModel.copyClosure = copyFilter;
				}
				return MyDslComponentsDomainModel.copyClosure;
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
				if (MyDslComponentsDomainModel.removeClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter removeFilter = new DslModeling::ChainingElementVisitorFilter();
					removeFilter.AddFilter(new MyDslComponentsDeleteClosure());
					removeFilter.AddFilter(new DslModeling::CoreDeleteClosure());
					removeFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceDeleteClosure());
		
					MyDslComponentsDomainModel.removeClosure = removeFilter;
				}
				return MyDslComponentsDomainModel.removeClosure;
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
			ruleManager.EnableRule(typeof(global::Company.MyDslComponents.FixUpDiagram));
			ruleManager.EnableRule(typeof(global::Company.MyDslComponents.DecoratorPropertyChanged));
		}
		
		/// <summary>
		/// Disables rules in this domain model related to diagram fixup for the given store.
		/// </summary>
		public static void DisableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.DisableRule(typeof(global::Company.MyDslComponents.FixUpDiagram));
			ruleManager.DisableRule(typeof(global::Company.MyDslComponents.DecoratorPropertyChanged));
		}
		#endregion
	}
		
	#region Copy/Remove closure classes
	/// <summary>
	/// Remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class MyDslComponentsDeleteClosure : MyDslComponentsDeleteClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public MyDslComponentsDeleteClosure() : base()
		{
		}
	}
	
	/// <summary>
	/// Base class for remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class MyDslComponentsDeleteClosureBase : DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary domainRoles;
		/// <summary>
		/// Constructor
		/// </summary>
		public MyDslComponentsDeleteClosureBase()
		{
			#region Initialize DomainData Table
			DomainRoles.Add(global::Company.MyDslComponents.ExampleModelHasElements.ElementDomainRoleId, true);
			DomainRoles.Add(global::Company.MyDslComponents.ExampleModelHasMyTextbox.MyTextboxDomainRoleId, true);
			DomainRoles.Add(global::Company.MyDslComponents.ExampleModelHasMyGauge.MyGaugeDomainRoleId, true);
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
	public partial class MyDslComponentsCopyClosure : MyDslComponentsCopyClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public MyDslComponentsCopyClosure() : base()
		{
		}
	}
	/// <summary>
	/// Base class for copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class MyDslComponentsCopyClosureBase : DslModeling::CopyClosureFilter, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public MyDslComponentsCopyClosureBase():base()
		{
		}
	}
	#endregion
		
}

