
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
using Microsoft.VisualStudio.Modeling.Diagrams;

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
            return $"<{GetType().Name} Name= \"{Name}\" X= {GetX()} Y= {GetY()} Width= {GetWidth()} Height= {GetHeight()}>";
        }

        public String GetClosingTag()
        {
            return $"</{GetType().Name} >";
        }

        public String GetX()
        {
            var shape = PresentationViewsSubject.GetPresentation(this).FirstOrDefault() as BaseShape;
            
            return shape.AbsoluteBoundingBox.X.ToString();
        }

        public String GetY()
        {
            var shape = PresentationViewsSubject.GetPresentation(this).FirstOrDefault() as BaseShape;

            return shape.AbsoluteBoundingBox.Y.ToString();
        }

        public String GetWidth()
        {
            var shape = PresentationViewsSubject.GetPresentation(this).FirstOrDefault() as BaseShape;

            return shape.AbsoluteBoundingBox.Width.ToString();
        }

        public String GetHeight()
        {
            var shape = PresentationViewsSubject.GetPresentation(this).FirstOrDefault() as BaseShape;

            return shape.AbsoluteBoundingBox.Height.ToString();
        }

    }

    public abstract partial class ITxContainer
    {
        
    }

    public partial class ITxView : ITxContainer
    {

    }

    public partial class ITxPanel : ITxContainer
    {

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

        protected virtual String OnGetOpeningTag()
        {
            return $"<{base.GetOpeningTag()} Text= \"{Text}\" >";
        }
    }

    public partial class ITxTextbox : ITxComponent
    {

        protected virtual String OnGetOpeningTag()
        {
            return "";
            //return $"<{base.GetOpeningTag()} Text= \"{Text}\" >";
        }

    }
    public partial class ITxGauge : ITxComponent
    {
        protected virtual String OnGetOpeningTag()
        {
            
            return $"<{base.GetOpeningTag()} >";
        }

    }

    //demo components
    public partial class FetchData : ITxComponent
    {
        protected virtual String OnGetOpeningTag()
        {

            return $"<{base.GetOpeningTag()} >";
        }

    }





}