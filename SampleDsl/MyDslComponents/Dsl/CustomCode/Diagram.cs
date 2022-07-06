
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.Modeling;

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.MyDslComponents
{
	internal sealed partial class FixUpDiagram : FixUpDiagramBase
	{
		//findCustomPathToParent is my custom function to get the correct path to the ITxModel of a component.
		//It explores, in an iterative way, all the parent ITxContainer until it reaches the ITxModel.
		private static global::Company.MyDslComponents.ITxModel findCustomPathToParent(global::Company.MyDslComponents.ITxComponent root)
        {
			global::Company.MyDslComponents.ITxModel result = null;

			global::Company.MyDslComponents.ITxComponent child = root;
			while (result == null)
			{
				result = child.ITxModel;
				child = child.ITxContainer;
			}

			return result;
		}

		//GetParentForS ITxContainers:
        private static global::Company.MyDslComponents.ITxModel GetParentForITxPanel(global::Company.MyDslComponents.ITxComponent root)
		{
			global::Company.MyDslComponents.ITxModel result = findCustomPathToParent(root);
			return result;
		}
		private static global::Company.MyDslComponents.ITxModel GetParentForITxView(global::Company.MyDslComponents.ITxComponent root)
		{
			global::Company.MyDslComponents.ITxModel result = findCustomPathToParent(root);
			return result;
		}


		//GetParentForS ITxComponents:

		private static global::Company.MyDslComponents.ITxModel GetParentForITxTextbox(global::Company.MyDslComponents.ITxComponent root)
		{
			global::Company.MyDslComponents.ITxModel result = findCustomPathToParent(root);
			return result;
		}

		private static global::Company.MyDslComponents.ITxModel GetParentForITxButton(global::Company.MyDslComponents.ITxComponent root)
		{
			global::Company.MyDslComponents.ITxModel result = findCustomPathToParent(root);
			return result;
		}

		private static global::Company.MyDslComponents.ITxModel GetParentForITxGauge(global::Company.MyDslComponents.ITxComponent root)
		{
			global::Company.MyDslComponents.ITxModel result = findCustomPathToParent(root);
			return result;
		}
	}
}

