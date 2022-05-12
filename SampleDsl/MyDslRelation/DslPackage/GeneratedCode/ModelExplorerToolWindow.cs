﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslShell = global::Microsoft.VisualStudio.Modeling.Shell;

namespace Company.MyDslRelation
{
	/// <summary>
	/// Double-derived class to allow easier code customization.
	/// </summary>
	[global::System.Runtime.InteropServices.Guid(Constants.MyDslRelationModelExplorerToolWindowId)]
	internal partial class MyDslRelationExplorerToolWindow : MyDslRelationExplorerToolWindowBase
	{
		/// <summary>
		/// Constructs a new MyDslRelationExplorerToolWindow.
		/// </summary>
		public MyDslRelationExplorerToolWindow(global::System.IServiceProvider serviceProvider)
			: base(serviceProvider)
		{
		}
	}

	/// <summary>
	/// Model explorer tool window class.
	/// </summary>
	internal abstract class MyDslRelationExplorerToolWindowBase : DslShell::ModelExplorerToolWindow
	{
		/// <summary>
		/// Constructor.
		/// </summary>
		/// <param name="serviceProvider">Service provider.</param>
		protected MyDslRelationExplorerToolWindowBase(global::System.IServiceProvider serviceProvider)
			: base(serviceProvider)
		{
		}

		/// <summary>
		/// Specifies a resource string that appears on the tool window title bar.
		/// </summary>
		public override string WindowTitle
		{
			get
			{
				global::System.Resources.ResourceManager resourceManager = global::Company.MyDslRelation.MyDslRelationDomainModel.SingletonResourceManager;
				return resourceManager.GetString("ModelExplorerTitle");
			}
		}
		
		/// <summary>
		/// Resource ID from VSPackage.resx containing the Model Explorer icon.
		/// </summary>
		protected override int BitmapResource
		{
			get
			{
				return 104;
			}
		}

		/// <summary>
		/// Index of tool window icon in BitmapResource.
		/// </summary>
		protected override int BitmapIndex
		{
			get { return 0; }
		}
		
		/// <summary>
		/// Creates the model explorer to be hosted in the window.
		/// </summary>
		/// <returns>ModelExplorerTreeContainer</returns>
		protected override DslShell::ModelExplorerTreeContainer CreateTreeContainer()
		{
			return new MyDslRelationExplorer(this);
		}
		
		/// <summary>
		/// Called when selection changes in this window.
		/// </summary>
		/// <remarks>
		/// Overriden to update the F1 help keyword for the selection.
		/// </remarks>
		/// <param name="e"></param>
		protected override void OnSelectionChanged(global::System.EventArgs e)
		{
			base.OnSelectionChanged(e);

			if(global::Company.MyDslRelation.MyDslRelationHelpKeywordHelper.Instance != null)
			{
				DslModeling::ModelElement selectedElement = this.PrimarySelection as DslModeling::ModelElement;
				if(selectedElement != null)
				{
					string f1Keyword = global::Company.MyDslRelation.MyDslRelationHelpKeywordHelper.Instance.GetHelpKeyword(selectedElement);
					if (!string.IsNullOrEmpty(f1Keyword) && this.SelectionHelpService != null)
					{
						this.SelectionHelpService.AddContextAttribute(string.Empty, f1Keyword, global::System.ComponentModel.Design.HelpKeywordType.F1Keyword);
					}
				}
			}
		}
	}
}

