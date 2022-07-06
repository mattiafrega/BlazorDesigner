
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.MyDslComponents
{
    public abstract partial class ITxComponent : DslModeling::ModelElement
    {
        
        public String GetOpeningTag()
        {
            return $"{OnGetOpeningTag()}";
        }

        protected virtual String OnGetOpeningTag()
        {
            return $"<{GetType().Name} Name= \"{Name}\" >";
        }

        public String GetClosingTag()
        {
            return $"</{GetType().Name} >";
        }

    }

    public abstract partial class ITxContainer
    {
        
    }

    public partial class ITxView : ITxContainer
    {

        public String GetOpeningTag()
        {
            return $"{OnGetOpeningTag()}";
        }

        protected virtual String OnGetOpeningTag()
        {
            return $"<{GetType().Name} Name= \"{Name}\" >";
        }
    }

    public partial class ITxPanel : ITxContainer
    {

        public String GetMarkup()
        {
            return $"{OnGetOpeningTag()}";
        }

        protected virtual String OnGetOpeningTag()
        {
            return $"<{GetType().Name} Name= \"{Name}\" >";
        }

        public List<ITxComponent> GetChildren()
        {
            List<ITxComponent> children = new List<ITxComponent>();
            foreach(ITxComponent child in ITxComponent)
            {
                children.Add(child);
            }
            return children;
        }
        
    }

    public partial class ITxButton : ITxComponent
    {

        protected override String OnGetOpeningTag()
        {
            return $"<{GetType().Name} Name= \"{Name}\" Text= \"{Text}\" >";
        }
    }

    public partial class ITxTextbox : ITxComponent
    {

        protected override String OnGetOpeningTag()
        {
            return $"<{GetType().Name} Name= \"{Name}\" Text= \"{Text}\" >";
        }

    }
    public partial class ITxGauge : ITxComponent
    {
        protected override String OnGetOpeningTag()
        {
            return $"<{GetType().Name} Name= \"{Name}\" >";
        }

    }

}