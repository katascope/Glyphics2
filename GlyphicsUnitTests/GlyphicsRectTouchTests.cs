using Microsoft.VisualStudio.TestTools.UnitTesting;
using GraphicsLib;
using RasterLib;

namespace GlyphicsUnitTests
{
    [TestClass]
    public class GlyphicsRectTouchTests
    {
        [TestMethod] //Test two clearly not touching rectangles
        public void RectTouch_NonTouchingRects()
        {
            Rect rectA = new Rect(0, 0, 0, 1, 1, 1);
            Rect rectB = new Rect(5, 5, 5, 6, 6, 6);
            Assert.IsFalse(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsFalse(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsFalse(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsFalse(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test that two identical rects "touch"
        public void RectTouch_IdenticalRects()
        {
            Rect rectA = new Rect(1, 1, 1, 2, 2, 2);
            Rect rectB = new Rect(1, 1, 1, 2, 2, 2);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsTrue(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test that two empty rects touch but do not touch faces
        public void RectTouch_EmptyRects()
        {
            Rect rectA = new Rect(1, 1, 1, 1, 1, 1);
            Rect rectB = new Rect(1, 1, 1, 1, 1, 1);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsFalse(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsFalse(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test that an empty rect and non-empty touch but do not touch faces
        public void RectTouch_EmptyRectToNonEmptyRect()
        {
            Rect rectA = new Rect(1, 1, 1, 1, 1, 1);
            Rect rectB = new Rect(1, 1, 1, 2, 2, 2);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsFalse(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsFalse(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test two rectangles partially inside each other
        public void RectTouch_IntersectingRects()
        {
            Rect rectA = new Rect(0, 0, 0, 10, 10, 10);
            Rect rectB = new Rect(5, 5, 5, 15, 15, 15);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsTrue(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test one rectangle entirely inside another
        public void RectTouch_SuperRect()
        {
            Rect rectA = new Rect(0, 0, 0, 10, 10, 10);
            Rect rectB = new Rect(3, 3, 3, 5, 5, 5);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsTrue(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test two rectangles touching only at corner
        public void RectTouch_CornerTouchingRects()
        {
            Rect rectA = new Rect(0, 0, 0, 10, 10, 10);
            Rect rectB = new Rect(10, 10, 10, 15, 15, 15);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsFalse(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsFalse(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test two rectangles touching only on an edge
        public void RectTouch_EdgeTouchingRects()
        {
            Rect rectA = new Rect(0, 0, 0, 10, 10, 10);
            Rect rectB = new Rect(10, 10, 1, 10, 10, 10);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsFalse(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsFalse(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test two rectangles touching on a face
        public void RectTouch_FaceTouchingRects1()
        {
            Rect rectA = new Rect(5, 5, 5, 5, 5, 10);
            Rect rectB = new Rect(0, 5, 7, 15, 6, 7);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsTrue(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesFaces(rectB, rectA));
        }

        [TestMethod] //Test another two rectangles touching on a face
        public void RectTouch_FaceTouchingRects2()
        {
            Rect rectA = new Rect(5, 5, 5, 10, 10, 10);
            Rect rectB = new Rect(3, 3, 10, 7, 7, 15);
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesAnywhere(rectB, rectA));
            Assert.IsTrue(RectTouch.TouchesFaces(rectA, rectB));
            Assert.IsTrue(RectTouch.TouchesFaces(rectB, rectA));
        }
    }
}
