
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
        
        public virtual String GetOpeningTag()
        {
            return $"{GetType().Name} Name= \"{Name}\" X= {GetX()} Y= {GetY()} Width= {GetWidth()} Height= {GetHeight()}";
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
        public List<ITxComponent> GetChildren()
        {
            List<ITxComponent> children = new List<ITxComponent>();
            foreach (ITxComponent child in ITxComponent)
            {
                children.Add(child);
            }
            return children;
        }


    }

    public partial class ITxView : ITxContainer
    {

    }

    public partial class ITxPanel : ITxContainer
    {
        /*
        public List<ITxComponent> GetChildren()
        {
            List<ITxComponent> children = new List<ITxComponent>();
            foreach(ITxComponent child in ITxComponent)
            {
                children.Add(child);
            }
            return children;
        }
        */
        
    }

    public partial class ITxButton : ITxComponent
    {

        public override String GetOpeningTag()
        {
            return $"<{base.GetOpeningTag()} Text= \"{Text}\" >";
        }
    }

    public partial class ITxTextbox : ITxComponent
    {

        public override String GetOpeningTag()
        {
            return $"<{base.GetOpeningTag()} Text= \"{Text}\" >";
        }

    }
    public partial class ITxGauge : ITxComponent
    {
        public override String GetOpeningTag()
        {
            
            return $"<{base.GetOpeningTag()} RangeStart={RangeStart} RangeEnd={RangeEnd} >";
        }

    }

    //demo components
    public partial class FetchData : ITxComponent
    {
        public override String GetOpeningTag()
        {

            return $"<{base.GetOpeningTag()} >";
        }

    }

    public partial class Counter : ITxComponent
    {
        public override String GetOpeningTag()
        {

            return $"<{base.GetOpeningTag()} >";
        }

    }

    public partial class SurveyPrompt : ITxComponent
    {
        public override String GetOpeningTag()
        {

            return $"<{base.GetOpeningTag()} Text='{Text}' >";
        }

    }

    public partial class InputTypeText : ITxComponent
    {
        public override String GetOpeningTag()
        {

            return $"<{base.GetOpeningTag()} Text='{Text}' >";
        }

    }





}