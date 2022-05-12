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

[module: global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Scope = "type", Target = "Company.MyDslSwimlane.MyDslSwimlaneDiagram")]

namespace Company.MyDslSwimlane
{
	/// <summary>
	/// DomainClass MyDslSwimlaneDiagram
	/// Description for Company.MyDslSwimlane.MyDslSwimlaneDiagram
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslSwimlane.MyDslSwimlaneDiagram.DisplayName", typeof(global::Company.MyDslSwimlane.MyDslSwimlaneDomainModel), "Company.MyDslSwimlane.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslSwimlane.MyDslSwimlaneDiagram.Description", typeof(global::Company.MyDslSwimlane.MyDslSwimlaneDomainModel), "Company.MyDslSwimlane.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslSwimlane.MyDslSwimlaneDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("c0acb98d-c39b-498d-988e-296a566a316e")]
	public partial class MyDslSwimlaneDiagram : DslDiagrams::Diagram
	{
		#region Diagram boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		#endregion
		#region Toolbox filters
		private static global::System.ComponentModel.ToolboxItemFilterAttribute[] toolboxFilters = new global::System.ComponentModel.ToolboxItemFilterAttribute[] {
					new global::System.ComponentModel.ToolboxItemFilterAttribute(global::Company.MyDslSwimlane.MyDslSwimlaneToolboxHelperBase.ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) };
		
		/// <summary>
		/// Toolbox item filter attributes for this diagram.
		/// </summary>
		public override global::System.Collections.ICollection TargetToolboxItemFilterAttributes
		{
			get
			{
				return toolboxFilters;
			}
		}
		#endregion
		#region Swimlane support
		
		/// <summary>
		/// Gets whether or not swimlanes are supported in this Diagram.
		/// </summary>
		public override bool HasSwimlanes
		{
			get { return true; }
		}
		
		/// <summary>
		/// Initializes the starting swimlanes in a new Diagram.
		/// </summary>
		/// <remarks>
		/// This method is not called during successful deserialization, only when either a blank diagram is created or diagram deserialization fails and a diagram is created to make things work.
		/// 
		/// This method does not create shapes for swimlanes with shape maps specified in the DSL definition, only those swimlanes which are not mapped.
		/// The assumption here is that if a swimlane is mapped to a domain class, then an instance of that class  will be created when the element mapped to the diagram is created,
		/// and swimlane shapes will be created as part of view fixup.
		/// </remarks>
		internal virtual void InitializeSwimlanes()
		{
		}
		
		/// <summary>
		/// Gets a collection of domain classes which are mapped to swimlane shapes.
		/// </summary>
		public override sealed global::System.Collections.Generic.IEnumerable<DslModeling::DomainClassInfo> CreatableSwimLaneSubjects
		{
			get
			{
				yield return this.Store.DomainDataDirectory.GetDomainClass(typeof(global::Company.MyDslSwimlane.MySwimLane));
			}
		}
		
		#endregion
		#region Shape mapping
		/// <summary>
		/// Called during view fixup to ask the parent whether a shape should be created for the given child element.
		/// </summary>
		/// <remarks>
		/// Always return true, since we assume there is only one diagram per model file for DSL scenarios.
		/// </remarks>
		protected override bool ShouldAddShapeForElement(DslModeling::ModelElement element)
		{
			return true;
		}
		
		
		/// <summary>
		/// Creates a new shape for the given model element as part of view fixup
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily", Justification = "Generated code.")]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
		protected override DslDiagrams::ShapeElement CreateChildShape(DslModeling::ModelElement element)
		{
			if(element is global::Company.MyDslSwimlane.MySwimLane)
			{
				global::Company.MyDslSwimlane.SwimLane1 newShape = new global::Company.MyDslSwimlane.SwimLane1(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::Company.MyDslSwimlane.MyButton)
			{
				global::Company.MyDslSwimlane.MyButtonShape newShape = new global::Company.MyDslSwimlane.MyButtonShape(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			return base.CreateChildShape(element);
		}
		#endregion
		#region Decorator mapping
		/// <summary>
		/// Initialize shape decorator mappings.  This is done here rather than in individual shapes because decorator maps
		/// are defined per diagram type rather than per shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
			global::Company.MyDslSwimlane.SwimLane1.DecoratorsInitialized += SwimLane1DecoratorMap.OnDecoratorsInitialized;
			global::Company.MyDslSwimlane.MyButtonShape.DecoratorsInitialized += MyButtonShapeDecoratorMap.OnDecoratorsInitialized;
		}
		
		/// <summary>
		/// Class containing decorator path traversal methods for SwimLane1.
		/// </summary>
		internal static partial class SwimLane1DecoratorMap
		{
			/// <summary>
			/// Event handler called when decorator initialization is complete for SwimLane1.  Adds decorator mappings for this shape or connector.
			/// </summary>
			public static void OnDecoratorsInitialized(object sender, global::System.EventArgs e)
			{
				DslDiagrams::ShapeElement shape = (DslDiagrams::ShapeElement)sender;
				DslDiagrams::AssociatedPropertyInfo propertyInfo;
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Company.MyDslSwimlane.MySwimLane.NameDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "NameDecor").AssociateValueWith(shape.Store, propertyInfo);
			}
		}
		
		/// <summary>
		/// Class containing decorator path traversal methods for MyButtonShape.
		/// </summary>
		internal static partial class MyButtonShapeDecoratorMap
		{
			/// <summary>
			/// Event handler called when decorator initialization is complete for MyButtonShape.  Adds decorator mappings for this shape or connector.
			/// </summary>
			public static void OnDecoratorsInitialized(object sender, global::System.EventArgs e)
			{
				DslDiagrams::ShapeElement shape = (DslDiagrams::ShapeElement)sender;
				DslDiagrams::AssociatedPropertyInfo propertyInfo;
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Company.MyDslSwimlane.MyButton.MyPropertyDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "MyPropertyDecor").AssociateValueWith(shape.Store, propertyInfo);
				
				propertyInfo = new DslDiagrams::AssociatedPropertyInfo(global::Company.MyDslSwimlane.MyButton.NameDomainPropertyId);
				DslDiagrams::ShapeElement.FindDecorator(shape.Decorators, "NameDecor").AssociateValueWith(shape.Store, propertyInfo);
			}
		}
		
		#endregion
		#region Constructors, domain class Id
	
		/// <summary>
		/// MyDslSwimlaneDiagram domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xc0acb98d, 0xc39b, 0x498d, 0x98, 0x8e, 0x29, 0x6a, 0x56, 0x6a, 0x31, 0x6e);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MyDslSwimlaneDiagram(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MyDslSwimlaneDiagram(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace Company.MyDslSwimlane
{
	
		/// <summary>
		/// Double derived implementation for the rule that initiates view fixup when an element that has an associated shape is added to the model.
		/// This now enables the DSL author to everride the SkipFixUp() method 
		/// </summary>
		internal partial class FixUpDiagramBase : DslModeling::AddRule
		{
			protected virtual bool SkipFixup(DslModeling::ModelElement childElement)
			{
				return childElement.IsDeleted;
			}
		}
	
		/// <summary>
		/// Rule that initiates view fixup when an element that has an associated shape is added to the model. 
		/// </summary>
		[DslModeling::RuleOn(typeof(global::Company.MyDslSwimlane.MySwimLane), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::Company.MyDslSwimlane.MyButton), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		internal sealed partial class FixUpDiagram : FixUpDiagramBase
		{
			[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
			public override void ElementAdded(DslModeling::ElementAddedEventArgs e)
			{
				if(e == null) throw new global::System.ArgumentNullException("e");
			
				DslModeling::ModelElement childElement = e.ModelElement;
				if (this.SkipFixup(childElement))
					return;
				DslModeling::ModelElement parentElement;
				if(childElement is global::Company.MyDslSwimlane.MySwimLane)
				{
					parentElement = GetParentForMySwimLane((global::Company.MyDslSwimlane.MySwimLane)childElement);
				} else
				if(childElement is global::Company.MyDslSwimlane.MyButton)
				{
					parentElement = GetParentForMyButton((global::Company.MyDslSwimlane.MyButton)childElement);
				} else
				{
					parentElement = null;
				}
				
				if(parentElement != null)
				{
					DslDiagrams::Diagram.FixUpDiagram(parentElement, childElement);
				}
			}
			public static global::Company.MyDslSwimlane.ExampleModel GetParentForMySwimLane( global::Company.MyDslSwimlane.MySwimLane root )
			{
				// Segments 0 and 1
				global::Company.MyDslSwimlane.ExampleModel result = root.ExampleModel;
				if ( result == null ) return null;
				return result;
			}
			public static global::Company.MyDslSwimlane.MySwimLane GetParentForMyButton( global::Company.MyDslSwimlane.MyButton root )
			{
				// Segments 0 and 1
				global::Company.MyDslSwimlane.MySwimLane result = root.MySwimLane;
				if ( result == null ) return null;
				return result;
			}
		}
		
	
		/// <summary>
		/// A rule which fires when data mapped to outer text decorators has changed,
		/// so we can update the decorator host's bounds.
		/// </summary>
		[DslModeling::RuleOn(typeof(global::Company.MyDslSwimlane.MyButton), InitiallyDisabled=true)]
		internal sealed class DecoratorPropertyChanged : DslModeling::ChangeRule
		{
			[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity", Justification = "Generated code.")]
			public override void ElementPropertyChanged(DslModeling::ElementPropertyChangedEventArgs e)
			{
				if(e == null) throw new global::System.ArgumentNullException("e");
				
				if (e.DomainProperty.Id == global::Company.MyDslSwimlane.MyButton.NameDomainPropertyId)
				{
					DslDiagrams::Decorator decorator = global::Company.MyDslSwimlane.MyButtonShape.FindMyButtonShapeDecorator("NameDecor");
					if(decorator != null)
					{
						decorator.UpdateDecoratorHostShapes(e.ModelElement, global::Company.MyDslSwimlane.MyButton.DomainClassId);
					}
				}
			}
		}
	
	}
