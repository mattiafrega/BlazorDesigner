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
	/// DomainClass InPortShape
	/// Description for Company.MyDslPorts.InPortShape
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslPorts.InPortShape.DisplayName", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslPorts.InPortShape.Description", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslPorts.MyDslPortsDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("b2cc7da2-158b-45f5-aa5f-a3ac1c5f4fd2")]
	public partial class InPortShape : DslDiagrams::Port
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
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
		/// Per-class ShapeFields for this shape.
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
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with InPortShape.
		/// </summary>
		public static DslDiagrams::Decorator FindInPortShapeDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		
		/// <summary>
		/// Shape instance initialization.
		/// </summary>
		public override void OnInitialize()
		{
			base.OnInitialize();
			
			// Create host shapes for outer decorators.
			foreach(DslDiagrams::Decorator decorator in this.Decorators)
			{
				if(decorator.RequiresHost)
				{
					decorator.ConfigureHostShape(this);
				}
			}
			
		}
		#endregion
		#region Shape size
		
		/// <summary>
		/// Default size for this shape.
		/// </summary>
		public override DslDiagrams::SizeD DefaultSize
		{
			get
			{
				return new DslDiagrams::SizeD(0.2, 0.2);
			}
		}
		#endregion
		#region Shape styles
		/// <summary>
		/// Initializes style set resources for this shape type
		/// </summary>
		/// <param name="classStyleSet">The style set for this shape class</param>
		protected override void InitializeResources(DslDiagrams::StyleSet classStyleSet)
		{
			base.InitializeResources(classStyleSet);
			
			// Outline pen settings for this shape.
			DslDiagrams::PenSettings outlinePen = new DslDiagrams::PenSettings();
			outlinePen.Width = 0.01F;
			classStyleSet.OverridePen(DslDiagrams::DiagramPens.ShapeOutline, outlinePen);
		}
		
		/// <summary>
		/// Indicates whether this shape displays a background gradient.
		/// </summary>
		public override bool HasBackgroundGradient
		{
			get
			{
				return true;
			}
		}
		
		/// <summary>
		/// Indicates the direction of the gradient.
		/// </summary>
		public override global::System.Drawing.Drawing2D.LinearGradientMode BackgroundGradientMode
		{
			get
			{
				return global::System.Drawing.Drawing2D.LinearGradientMode.Horizontal;
			}
		}
		#endregion
		#region Decorators
		/// <summary>
		/// Initialize the collection of shape fields associated with this shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
			DslDiagrams::ImageField field1 = new DslDiagrams::ImageField("Image");
			field1.DefaultImage = DslDiagrams::ImageHelper.GetImage(global::Company.MyDslPorts.MyDslPortsDomainModel.SingletonResourceManager.GetObject("InPortShapeImageDefaultImage"));
			shapeFields.Add(field1);
			
		}
		
		/// <summary>
		/// Initialize the collection of decorators associated with this shape type.  This method also
		/// creates shape fields for outer decorators, because these are not part of the shape fields collection
		/// associated with the shape, so they must be created here rather than in InitializeShapeFields.
		/// </summary>
		protected override void InitializeDecorators(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields, global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators)
		{
			base.InitializeDecorators(shapeFields, decorators);
			
			DslDiagrams::ShapeField field1 = DslDiagrams::ShapeElement.FindShapeField(shapeFields, "Image");
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ShapeDecorator(field1, DslDiagrams::ShapeDecoratorPosition.Center, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
		}
		
		/// <summary>
		/// Ensure outer decorators are placed appropriately.  This is called during view fixup,
		/// after the shape has been associated with the model element.
		/// </summary>
		public override void OnBoundsFixup(DslDiagrams::BoundsFixupState fixupState, int iteration, bool createdDuringViewFixup)
		{
			base.OnBoundsFixup(fixupState, iteration, createdDuringViewFixup);
			
			if(iteration == 0)
			{
				foreach(DslDiagrams::Decorator decorator in this.Decorators)
				{
					if(decorator.RequiresHost)
					{
						decorator.RepositionHostShape(decorator.GetHostShape(this));
					}
				}
			}
		}
		#endregion
		#region Constructors, domain class Id
	
		/// <summary>
		/// InPortShape domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xb2cc7da2, 0x158b, 0x45f5, 0xaa, 0x5f, 0xa3, 0xac, 0x1c, 0x5f, 0x4f, 0xd2);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public InPortShape(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public InPortShape(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace Company.MyDslPorts
{
	/// <summary>
	/// DomainClass OutPortShape
	/// Description for Company.MyDslPorts.OutPortShape
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslPorts.OutPortShape.DisplayName", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslPorts.OutPortShape.Description", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslPorts.MyDslPortsDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("b9f2e13f-7a50-4f48-992b-a2541322bac6")]
	public partial class OutPortShape : DslDiagrams::Port
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
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
		/// Per-class ShapeFields for this shape.
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
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with OutPortShape.
		/// </summary>
		public static DslDiagrams::Decorator FindOutPortShapeDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		
		/// <summary>
		/// Shape instance initialization.
		/// </summary>
		public override void OnInitialize()
		{
			base.OnInitialize();
			
			// Create host shapes for outer decorators.
			foreach(DslDiagrams::Decorator decorator in this.Decorators)
			{
				if(decorator.RequiresHost)
				{
					decorator.ConfigureHostShape(this);
				}
			}
			
		}
		#endregion
		#region Shape size
		
		/// <summary>
		/// Default size for this shape.
		/// </summary>
		public override DslDiagrams::SizeD DefaultSize
		{
			get
			{
				return new DslDiagrams::SizeD(0.2, 0.2);
			}
		}
		#endregion
		#region Shape styles
		/// <summary>
		/// Initializes style set resources for this shape type
		/// </summary>
		/// <param name="classStyleSet">The style set for this shape class</param>
		protected override void InitializeResources(DslDiagrams::StyleSet classStyleSet)
		{
			base.InitializeResources(classStyleSet);
			
			// Outline pen settings for this shape.
			DslDiagrams::PenSettings outlinePen = new DslDiagrams::PenSettings();
			outlinePen.Width = 0.01F;
			classStyleSet.OverridePen(DslDiagrams::DiagramPens.ShapeOutline, outlinePen);
		}
		
		/// <summary>
		/// Indicates whether this shape displays a background gradient.
		/// </summary>
		public override bool HasBackgroundGradient
		{
			get
			{
				return true;
			}
		}
		
		/// <summary>
		/// Indicates the direction of the gradient.
		/// </summary>
		public override global::System.Drawing.Drawing2D.LinearGradientMode BackgroundGradientMode
		{
			get
			{
				return global::System.Drawing.Drawing2D.LinearGradientMode.Horizontal;
			}
		}
		#endregion
		#region Decorators
		/// <summary>
		/// Initialize the collection of shape fields associated with this shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
			DslDiagrams::ImageField field1 = new DslDiagrams::ImageField("Image");
			field1.DefaultImage = DslDiagrams::ImageHelper.GetImage(global::Company.MyDslPorts.MyDslPortsDomainModel.SingletonResourceManager.GetObject("OutPortShapeImageDefaultImage"));
			shapeFields.Add(field1);
			
		}
		
		/// <summary>
		/// Initialize the collection of decorators associated with this shape type.  This method also
		/// creates shape fields for outer decorators, because these are not part of the shape fields collection
		/// associated with the shape, so they must be created here rather than in InitializeShapeFields.
		/// </summary>
		protected override void InitializeDecorators(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields, global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators)
		{
			base.InitializeDecorators(shapeFields, decorators);
			
			DslDiagrams::ShapeField field1 = DslDiagrams::ShapeElement.FindShapeField(shapeFields, "Image");
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ShapeDecorator(field1, DslDiagrams::ShapeDecoratorPosition.Center, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
		}
		
		/// <summary>
		/// Ensure outer decorators are placed appropriately.  This is called during view fixup,
		/// after the shape has been associated with the model element.
		/// </summary>
		public override void OnBoundsFixup(DslDiagrams::BoundsFixupState fixupState, int iteration, bool createdDuringViewFixup)
		{
			base.OnBoundsFixup(fixupState, iteration, createdDuringViewFixup);
			
			if(iteration == 0)
			{
				foreach(DslDiagrams::Decorator decorator in this.Decorators)
				{
					if(decorator.RequiresHost)
					{
						decorator.RepositionHostShape(decorator.GetHostShape(this));
					}
				}
			}
		}
		#endregion
		#region Constructors, domain class Id
	
		/// <summary>
		/// OutPortShape domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xb9f2e13f, 0x7a50, 0x4f48, 0x99, 0x2b, 0xa2, 0x54, 0x13, 0x22, 0xba, 0xc6);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public OutPortShape(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public OutPortShape(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace Company.MyDslPorts
{
	/// <summary>
	/// DomainClass ComponentShape
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslPorts.ComponentShape.DisplayName", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslPorts.ComponentShape.Description", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslPorts.MyDslPortsDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("b0ff8d57-150b-42cf-b5ba-0aaaa9556b50")]
	public partial class ComponentShape : DslDiagrams::NodeShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
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
		/// Per-class ShapeFields for this shape.
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
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with ComponentShape.
		/// </summary>
		public static DslDiagrams::Decorator FindComponentShapeDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		
		/// <summary>
		/// Shape instance initialization.
		/// </summary>
		public override void OnInitialize()
		{
			base.OnInitialize();
			
			// Create host shapes for outer decorators.
			foreach(DslDiagrams::Decorator decorator in this.Decorators)
			{
				if(decorator.RequiresHost)
				{
					decorator.ConfigureHostShape(this);
				}
			}
			
		}
		#endregion
		#region Shape size
		
		/// <summary>
		/// Default size for this shape.
		/// </summary>
		public override DslDiagrams::SizeD DefaultSize
		{
			get
			{
				return new DslDiagrams::SizeD(1.5, 0.5);
			}
		}
		#endregion
		#region Shape styles
		/// <summary>
		/// Initializes style set resources for this shape type
		/// </summary>
		/// <param name="classStyleSet">The style set for this shape class</param>
		protected override void InitializeResources(DslDiagrams::StyleSet classStyleSet)
		{
			base.InitializeResources(classStyleSet);
			
			// Outline pen settings for this shape.
			DslDiagrams::PenSettings outlinePen = new DslDiagrams::PenSettings();
			outlinePen.Color = global::System.Drawing.Color.FromArgb(255, 113, 111, 110);
			outlinePen.Width = 0.01F;
			classStyleSet.OverridePen(DslDiagrams::DiagramPens.ShapeOutline, outlinePen);
			// Fill brush settings for this shape.
			DslDiagrams::BrushSettings backgroundBrush = new DslDiagrams::BrushSettings();
			backgroundBrush.Color = global::System.Drawing.Color.FromArgb(255, 227, 226, 231);
			classStyleSet.OverrideBrush(DslDiagrams::DiagramBrushes.ShapeBackground, backgroundBrush);
		
		}
		
		/// <summary>
		/// Indicates whether this shape displays a background gradient.
		/// </summary>
		public override bool HasBackgroundGradient
		{
			get
			{
				return true;
			}
		}
		
		/// <summary>
		/// Indicates the direction of the gradient.
		/// </summary>
		public override global::System.Drawing.Drawing2D.LinearGradientMode BackgroundGradientMode
		{
			get
			{
				return global::System.Drawing.Drawing2D.LinearGradientMode.Horizontal;
			}
		}
		#endregion
		#region Decorators
		/// <summary>
		/// Initialize the collection of shape fields associated with this shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
			DslDiagrams::TextField field1 = new DslDiagrams::TextField("Name");
			field1.DefaultText = global::Company.MyDslPorts.MyDslPortsDomainModel.SingletonResourceManager.GetString("ComponentShapeNameDefaultText");
			field1.DefaultFocusable = true;
			field1.DefaultAutoSize = true;
			field1.AnchoringBehavior.MinimumHeightInLines = 1;
			field1.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field1.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			shapeFields.Add(field1);
			
		}
		
		/// <summary>
		/// Initialize the collection of decorators associated with this shape type.  This method also
		/// creates shape fields for outer decorators, because these are not part of the shape fields collection
		/// associated with the shape, so they must be created here rather than in InitializeShapeFields.
		/// </summary>
		protected override void InitializeDecorators(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields, global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators)
		{
			base.InitializeDecorators(shapeFields, decorators);
			
			DslDiagrams::ShapeField field1 = DslDiagrams::ShapeElement.FindShapeField(shapeFields, "Name");
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ShapeDecorator(field1, DslDiagrams::ShapeDecoratorPosition.InnerTopCenter, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
		}
		
		/// <summary>
		/// Ensure outer decorators are placed appropriately.  This is called during view fixup,
		/// after the shape has been associated with the model element.
		/// </summary>
		public override void OnBoundsFixup(DslDiagrams::BoundsFixupState fixupState, int iteration, bool createdDuringViewFixup)
		{
			base.OnBoundsFixup(fixupState, iteration, createdDuringViewFixup);
			
			if(iteration == 0)
			{
				foreach(DslDiagrams::Decorator decorator in this.Decorators)
				{
					if(decorator.RequiresHost)
					{
						decorator.RepositionHostShape(decorator.GetHostShape(this));
					}
				}
			}
		}
		#endregion
		#region Constructors, domain class Id
	
		/// <summary>
		/// ComponentShape domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xb0ff8d57, 0x150b, 0x42cf, 0xb5, 0xba, 0x0a, 0xaa, 0xa9, 0x55, 0x6b, 0x50);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public ComponentShape(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public ComponentShape(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace Company.MyDslPorts
{
	/// <summary>
	/// DomainClass CommentBoxShape
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslPorts.CommentBoxShape.DisplayName", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslPorts.CommentBoxShape.Description", typeof(global::Company.MyDslPorts.MyDslPortsDomainModel), "Company.MyDslPorts.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslPorts.MyDslPortsDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("bb64a57d-b620-44a3-8343-f99490ff0d75")]
	public partial class CommentBoxShape : DslDiagrams::NodeShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
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
		/// Per-class ShapeFields for this shape.
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
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with CommentBoxShape.
		/// </summary>
		public static DslDiagrams::Decorator FindCommentBoxShapeDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		
		/// <summary>
		/// Shape instance initialization.
		/// </summary>
		public override void OnInitialize()
		{
			base.OnInitialize();
			
			// Create host shapes for outer decorators.
			foreach(DslDiagrams::Decorator decorator in this.Decorators)
			{
				if(decorator.RequiresHost)
				{
					decorator.ConfigureHostShape(this);
				}
			}
			
		}
		#endregion
		#region Shape size
		
		/// <summary>
		/// Default size for this shape.
		/// </summary>
		public override DslDiagrams::SizeD DefaultSize
		{
			get
			{
				return new DslDiagrams::SizeD(1.5, 0.3);
			}
		}
		#endregion
		#region Shape styles
		/// <summary>
		/// Initializes style set resources for this shape type
		/// </summary>
		/// <param name="classStyleSet">The style set for this shape class</param>
		protected override void InitializeResources(DslDiagrams::StyleSet classStyleSet)
		{
			base.InitializeResources(classStyleSet);
			
			// Outline pen settings for this shape.
			DslDiagrams::PenSettings outlinePen = new DslDiagrams::PenSettings();
			outlinePen.Color = global::System.Drawing.Color.FromArgb(255, 204, 204, 102);
			outlinePen.Width = 0.01F;
			classStyleSet.OverridePen(DslDiagrams::DiagramPens.ShapeOutline, outlinePen);
			// Fill brush settings for this shape.
			DslDiagrams::BrushSettings backgroundBrush = new DslDiagrams::BrushSettings();
			backgroundBrush.Color = global::System.Drawing.Color.FromArgb(255, 255, 255, 204);
			classStyleSet.OverrideBrush(DslDiagrams::DiagramBrushes.ShapeBackground, backgroundBrush);
		
		}
		
		/// <summary>
		/// Indicates whether this shape displays a background gradient.
		/// </summary>
		public override bool HasBackgroundGradient
		{
			get
			{
				return false;
			}
		}
		#endregion
		#region Decorators
		/// <summary>
		/// Initialize the collection of shape fields associated with this shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
			DslDiagrams::TextField field1 = new DslDiagrams::TextField("Comment");
			field1.DefaultText = string.Empty;
			field1.DefaultFocusable = true;
			field1.DefaultAutoSize = true;
			field1.AnchoringBehavior.MinimumHeightInLines = 1;
			field1.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field1.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			shapeFields.Add(field1);
			
		}
		
		/// <summary>
		/// Initialize the collection of decorators associated with this shape type.  This method also
		/// creates shape fields for outer decorators, because these are not part of the shape fields collection
		/// associated with the shape, so they must be created here rather than in InitializeShapeFields.
		/// </summary>
		protected override void InitializeDecorators(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields, global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators)
		{
			base.InitializeDecorators(shapeFields, decorators);
			
			DslDiagrams::ShapeField field1 = DslDiagrams::ShapeElement.FindShapeField(shapeFields, "Comment");
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ShapeDecorator(field1, DslDiagrams::ShapeDecoratorPosition.Center, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
		}
		
		/// <summary>
		/// Ensure outer decorators are placed appropriately.  This is called during view fixup,
		/// after the shape has been associated with the model element.
		/// </summary>
		public override void OnBoundsFixup(DslDiagrams::BoundsFixupState fixupState, int iteration, bool createdDuringViewFixup)
		{
			base.OnBoundsFixup(fixupState, iteration, createdDuringViewFixup);
			
			if(iteration == 0)
			{
				foreach(DslDiagrams::Decorator decorator in this.Decorators)
				{
					if(decorator.RequiresHost)
					{
						decorator.RepositionHostShape(decorator.GetHostShape(this));
					}
				}
			}
		}
		#endregion
		#region Constructors, domain class Id
	
		/// <summary>
		/// CommentBoxShape domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xbb64a57d, 0xb620, 0x44a3, 0x83, 0x43, 0xf9, 0x94, 0x90, 0xff, 0x0d, 0x75);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public CommentBoxShape(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public CommentBoxShape(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}

