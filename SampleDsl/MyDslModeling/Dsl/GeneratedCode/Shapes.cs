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

namespace Company.MyDslModeling
{
	/// <summary>
	/// DomainClass MyObjectShape
	/// Description for Company.MyDslModeling.MyObjectShape
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslModeling.MyObjectShape.DisplayName", typeof(global::Company.MyDslModeling.MyDslModelingDomainModel), "Company.MyDslModeling.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslModeling.MyObjectShape.Description", typeof(global::Company.MyDslModeling.MyDslModelingDomainModel), "Company.MyDslModeling.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslModeling.MyDslModelingDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("489c8418-5b8d-46bd-96fb-4059d105e436")]
	public partial class MyObjectShape : DslDiagrams::ImageShape
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
		/// Finds a decorator associated with MyObjectShape.
		/// </summary>
		public static DslDiagrams::Decorator FindMyObjectShapeDecorator(string decoratorName)
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
		#endregion
		#region Shape styles
		/// <summary>
		/// Initializes style set resources for this shape type
		/// </summary>
		/// <param name="classStyleSet">The style set for this shape class</param>
		protected override void InitializeResources(DslDiagrams::StyleSet classStyleSet)
		{
			base.InitializeResources(classStyleSet);
			
			// Custom font styles
			DslDiagrams::FontSettings fontSettings;
			fontSettings = new DslDiagrams::FontSettings();
			fontSettings.Style =  global::System.Drawing.FontStyle.Regular ;
			fontSettings.Size = 10/72.0F;
			classStyleSet.AddFont(new DslDiagrams::StyleSetResourceId(string.Empty, "ShapeTextRegular10"), DslDiagrams::DiagramFonts.ShapeText, fontSettings);
		}
		
		#endregion
		#region Decorators
		/// <summary>
		/// Initialize the collection of shape fields associated with this shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
		}
		
		/// <summary>
		/// Initialize the collection of decorators associated with this shape type.  This method also
		/// creates shape fields for outer decorators, because these are not part of the shape fields collection
		/// associated with the shape, so they must be created here rather than in InitializeShapeFields.
		/// </summary>
		protected override void InitializeDecorators(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields, global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators)
		{
			base.InitializeDecorators(shapeFields, decorators);
			
			DslDiagrams::TextField field1 = new DslDiagrams::TextField("NameDecorator");
			field1.DefaultText = global::Company.MyDslModeling.MyDslModelingDomainModel.SingletonResourceManager.GetString("MyObjectShapeNameDecoratorDefaultText");
			field1.DefaultFocusable = true;
			field1.DefaultAutoSize = true;
			field1.AnchoringBehavior.MinimumHeightInLines = 1;
			field1.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field1.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ShapeDecorator(field1, DslDiagrams::ShapeDecoratorPosition.OuterTopCenter, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
			DslDiagrams::TextField field2 = new DslDiagrams::TextField("CaptionDecorator");
			field2.DefaultText = global::Company.MyDslModeling.MyDslModelingDomainModel.SingletonResourceManager.GetString("MyObjectShapeCaptionDecoratorDefaultText");
			field2.DefaultFocusable = true;
			field2.DefaultAutoSize = true;
			field2.AnchoringBehavior.MinimumHeightInLines = 1;
			field2.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field2.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			field2.DefaultFontId = new DslDiagrams::StyleSetResourceId(string.Empty, "ShapeTextRegular10");			
			DslDiagrams::Decorator decorator2 = new DslDiagrams::ShapeDecorator(field2, DslDiagrams::ShapeDecoratorPosition.OuterBottomCenter, DslDiagrams::PointD.Empty);
			decorators.Add(decorator2);
				
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
		/// <summary>
		/// Provide the specific Image for this Shape class
		/// </summary>
		protected override global::System.Drawing.Image Image
		{
			get
			{
				global::System.Resources.ResourceManager resourceManager = global::Company.MyDslModeling.MyDslModelingDomainModel.SingletonResourceManager;
				return DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("MyObjectShapeImage"));
			}
		}
		#region Constructors, domain class Id
	
		/// <summary>
		/// MyObjectShape domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x489c8418, 0x5b8d, 0x46bd, 0x96, 0xfb, 0x40, 0x59, 0xd1, 0x05, 0xe4, 0x36);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MyObjectShape(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MyObjectShape(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace Company.MyDslModeling
{
	/// <summary>
	/// DomainClass MySecondObjShape
	/// Description for Company.MyDslModeling.MySecondObjShape
	/// </summary>
	[DslDesign::DisplayNameResource("Company.MyDslModeling.MySecondObjShape.DisplayName", typeof(global::Company.MyDslModeling.MyDslModelingDomainModel), "Company.MyDslModeling.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.MyDslModeling.MySecondObjShape.Description", typeof(global::Company.MyDslModeling.MyDslModelingDomainModel), "Company.MyDslModeling.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.MyDslModeling.MyDslModelingDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("48aad25c-374a-4e33-95b7-0674db31bbc5")]
	public partial class MySecondObjShape : DslDiagrams::NodeShape
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
		/// Finds a decorator associated with MySecondObjShape.
		/// </summary>
		public static DslDiagrams::Decorator FindMySecondObjShapeDecorator(string decoratorName)
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
				return new DslDiagrams::SizeD(3, 3);
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
			
			// Custom font styles
			DslDiagrams::FontSettings fontSettings;
			fontSettings = new DslDiagrams::FontSettings();
			fontSettings.Style =  global::System.Drawing.FontStyle.Bold |  global::System.Drawing.FontStyle.Underline ;
			fontSettings.Size = 12/72.0F;
			classStyleSet.AddFont(new DslDiagrams::StyleSetResourceId(string.Empty, "ShapeTextBold, Underline12"), DslDiagrams::DiagramFonts.ShapeText, fontSettings);
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
			DslDiagrams::TextField field1 = new DslDiagrams::TextField("NameDecorator");
			field1.DefaultText = global::Company.MyDslModeling.MyDslModelingDomainModel.SingletonResourceManager.GetString("MySecondObjShapeNameDecoratorDefaultText");
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
			
			DslDiagrams::ShapeField field1 = DslDiagrams::ShapeElement.FindShapeField(shapeFields, "NameDecorator");
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ShapeDecorator(field1, DslDiagrams::ShapeDecoratorPosition.InnerTopLeft, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
			DslDiagrams::TextField field2 = new DslDiagrams::TextField("CaptionDecorator");
			field2.DefaultText = global::Company.MyDslModeling.MyDslModelingDomainModel.SingletonResourceManager.GetString("MySecondObjShapeCaptionDecoratorDefaultText");
			field2.DefaultFocusable = true;
			field2.DefaultAutoSize = true;
			field2.AnchoringBehavior.MinimumHeightInLines = 1;
			field2.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field2.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			DslDiagrams::Decorator decorator2 = new DslDiagrams::ShapeDecorator(field2, DslDiagrams::ShapeDecoratorPosition.OuterBottomCenter, DslDiagrams::PointD.Empty);
			decorators.Add(decorator2);
				
			DslDiagrams::TextField field3 = new DslDiagrams::TextField("TitleDecorator");
			field3.DefaultText = global::Company.MyDslModeling.MyDslModelingDomainModel.SingletonResourceManager.GetString("MySecondObjShapeTitleDecoratorDefaultText");
			field3.DefaultFocusable = true;
			field3.DefaultAutoSize = true;
			field3.AnchoringBehavior.MinimumHeightInLines = 1;
			field3.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field3.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			field3.DefaultFontId = new DslDiagrams::StyleSetResourceId(string.Empty, "ShapeTextBold, Underline12");			
			DslDiagrams::Decorator decorator3 = new DslDiagrams::ShapeDecorator(field3, DslDiagrams::ShapeDecoratorPosition.OuterTopCenter, DslDiagrams::PointD.Empty);
			decorators.Add(decorator3);
				
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
		/// MySecondObjShape domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x48aad25c, 0x374a, 0x4e33, 0x95, 0xb7, 0x06, 0x74, 0xdb, 0x31, 0xbb, 0xc5);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MySecondObjShape(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MySecondObjShape(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Val domain property code
		
		/// <summary>
		/// Val domain property Id.
		/// </summary>
		public static readonly global::System.Guid ValDomainPropertyId = new global::System.Guid(0x783f67e6, 0xe6be, 0x4cd7, 0xa2, 0x18, 0x6b, 0x29, 0xdf, 0xbc, 0x8a, 0x70);
		
		/// <summary>
		/// Storage for Val
		/// </summary>
		private global::System.Int32 valPropertyStorage = 15;
		
		/// <summary>
		/// Gets or sets the value of Val domain property.
		/// Description for Company.MyDslModeling.MySecondObjShape.Val
		/// </summary>
		[DslDesign::DisplayNameResource("Company.MyDslModeling.MySecondObjShape/Val.DisplayName", typeof(global::Company.MyDslModeling.MyDslModelingDomainModel), "Company.MyDslModeling.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.MyDslModeling.MySecondObjShape/Val.Description", typeof(global::Company.MyDslModeling.MyDslModelingDomainModel), "Company.MyDslModeling.GeneratedCode.DomainModelResx")]
		[global::System.ComponentModel.DefaultValue(15)]
		[DslModeling::DomainObjectId("783f67e6-e6be-4cd7-a218-6b29dfbc8a70")]
		public global::System.Int32 Val
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return valPropertyStorage;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				ValPropertyHandler.Instance.SetValue(this, value);
			}
		}
		/// <summary>
		/// Value handler for the MySecondObjShape.Val domain property.
		/// </summary>
		internal sealed partial class ValPropertyHandler : DslModeling::DomainPropertyValueHandler<MySecondObjShape, global::System.Int32>
		{
			private ValPropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the MySecondObjShape.Val domain property value handler.
			/// </summary>
			public static readonly ValPropertyHandler Instance = new ValPropertyHandler();
		
			/// <summary>
			/// Gets the Id of the MySecondObjShape.Val domain property.
			/// </summary>
			public sealed override global::System.Guid DomainPropertyId
			{
				[global::System.Diagnostics.DebuggerStepThrough]
				get
				{
					return ValDomainPropertyId;
				}
			}
			
			/// <summary>
			/// Gets a strongly-typed value of the property on specified element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <returns>Property value.</returns>
			public override sealed global::System.Int32 GetValue(MySecondObjShape element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.valPropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(MySecondObjShape element, global::System.Int32 newValue)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
		
				global::System.Int32 oldValue = GetValue(element);
				if (newValue != oldValue)
				{
					ValueChanging(element, oldValue, newValue);
					element.valPropertyStorage = newValue;
					ValueChanged(element, oldValue, newValue);
				}
			}
		}
		
		#endregion
	}
}
