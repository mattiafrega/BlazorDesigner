using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
using Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.MyDslModeling
{
    public partial class MyObjectShape : DslDiagrams::ImageShape
    {
        public override NodeSides ResizableSides => NodeSides.All;

        public override void OnPaintShape(DiagramPaintEventArgs e)
        {
            base.OnPaintShape(e);
            Graphics g = e.Graphics;
            Brush b = new SolidBrush(Color.Brown);
            g.FillRectangle(b,50,50,150,50);
        }
    }

	public partial class MySecondObjShape : DslDiagrams::NodeShape
	{
        public override void OnPaintShape(DiagramPaintEventArgs e)
        {
            
            base.OnPaintShape(e);
            Graphics g = e.Graphics;
            Brush myBrownBrush = new SolidBrush(Color.Brown);
            Brush myRedBrush = new SolidBrush(Color.IndianRed);
            Pen myBlackPen = new Pen(Color.Black,0.2F);
            Pen myWhitePen = new Pen(Color.White, 0.2F);

            RectangleF rectf = RectangleD.ToRectangleF(this.AbsoluteBoundingBox);
            g.FillRectangle(myBrownBrush, rectf);
            g.FillEllipse(myRedBrush, rectf);

            float middleX = (rectf.Left + rectf.Right ) / 2;
            float middleY = (rectf.Bottom + rectf.Top) / 2;

            PointF centerPoint = new PointF(middleX, middleY);

            float value = this.Val; //arcend prende valori da 0 a 100
            float radius = rectf.Width / 2; //raggio

            float angle = remap(value, 0, 100, 0, 180); //mappa il valore dell'utente da 0 a 100 nei gradi del gauge range 0-180
            g.DrawArc(myBlackPen, rectf, 180, angle);

            float decreasedRadius = radius * 0.9F; //solo per effetto grafico
            float x = (float)(middleX + decreasedRadius * Math.Cos(Math.PI * 2 * (angle-180) / 360));
            float y = (float)(middleY + decreasedRadius * Math.Sin(Math.PI * 2 * (angle-180) / 360));
            PointF point1 = new PointF(x, y); 
            g.DrawLine(myBlackPen, centerPoint, point1);

            float gaugeUnitWidth = 2;
            g.DrawArc(myWhitePen, rectf, 180F, gaugeUnitWidth);
            g.DrawArc(myWhitePen, rectf, 225F, gaugeUnitWidth);
            g.DrawArc(myWhitePen, rectf, 270F, gaugeUnitWidth);
            g.DrawArc(myWhitePen, rectf, 315F, gaugeUnitWidth);
            g.DrawArc(myWhitePen, rectf, 357F, gaugeUnitWidth);

        }

        public static float remap(float val, float in1, float in2, float out1, float out2)
        {
            return out1 + (val - in1) * (out2 - out1) / (in2 - in1);
        }
    }
}
