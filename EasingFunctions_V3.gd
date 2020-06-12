#Terms of Use: Easing Functions (Equations)
#
#Open source under the MIT License and the 3-Clause BSD License.
#
#
#MIT License
#
#Copyright © 2001 Robert Penner
#
#Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#
#BSD License
#
#Copyright © 2001 Robert Penner
#
#Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
#
#Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
#Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
#Neither the name of the author nor the names of contributors may be used to endorse or promote products derived from this software without specific prior written permission.
#
#THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES LOSS OF USE, DATA, OR PROFITS OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# easing functions

# t = elapsed time
# b = begin
# c = change = ending - beginning
# d = duration

# easing function make a value change from "b" to "b + c"
# in time from "t = 0" to "t = t + d"

class_name EasingV3

class Back:
# s = amplitude for "back" variation
	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float, s: float = 1.70158) -> Vector3:
		return Vector3(Easing.Back.EaseIn(t, b.x, c.x, d, s), Easing.Back.EaseIn(t, b.y, c.y, d, s), Easing.Back.EaseIn(t, b.z, c.z, d, s))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float, s: float = 1.70158) -> Vector3:
		return Vector3(Easing.Back.EaseOut(t, b.x, c.x, d, s), Easing.Back.EaseOut(t, b.y, c.y, d, s), Easing.Back.EaseOut(t, b.z, c.z, d, s))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float, s: float = 1.70158) -> Vector3:
		return Vector3(Easing.Back.EaseInOut(t, b.x, c.x, d, s), Easing.Back.EaseInOut(t, b.y, c.y, d, s), Easing.Back.EaseInOut(t, b.z, c.z, d, s))

	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float, s: float = 1.70158) -> Vector3:
		return Vector3(Easing.Back.EaseOutIn(t, b.x, c.x, d, s), Easing.Back.EaseOutIn(t, b.y, c.y, d, s), Easing.Back.EaseOutIn(t, b.z, c.z, d, s))

class Bounce:

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Bounce.EaseOut(t, b.x, c.x, d), Easing.Bounce.EaseOut(t, b.y, c.y, d), Easing.Bounce.EaseOut(t, b.z, c.z, d))

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Bounce.EaseIn(t, b.x, c.x, d), Easing.Bounce.EaseIn(t, b.y, c.y, d), Easing.Bounce.EaseIn(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Bounce.EaseInOut(t, b.x, c.x, d), Easing.Bounce.EaseInOut(t, b.y, c.y, d), Easing.Bounce.EaseInOut(t, b.z, c.z, d))

	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Bounce.EaseOutIn(t, b.x, c.x, d), Easing.Bounce.EaseOutIn(t, b.y, c.y, d), Easing.Bounce.EaseOutIn(t, b.z, c.z, d))

class Circ:

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Circ.EaseIn(t, b.x, c.x, d), Easing.Circ.EaseIn(t, b.y, c.y, d), Easing.Circ.EaseIn(t, b.z, c.z, d))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Circ.EaseOut(t, b.x, c.x, d), Easing.Circ.EaseOut(t, b.y, c.y, d), Easing.Circ.EaseOut(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Circ.EaseInOut(t, b.x, c.x, d), Easing.Circ.EaseInOut(t, b.y, c.y, d), Easing.Circ.EaseInOut(t, b.z, c.z, d))
		
	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Circ.EaseOutIn(t, b.x, c.x, d), Easing.Circ.EaseOutIn(t, b.y, c.y, d), Easing.Circ.EaseOutIn(t, b.z, c.z, d))

class Cubic:

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Cubic.EaseIn(t, b.x, c.x, d), Easing.Cubic.EaseIn(t, b.y, c.y, d), Easing.Cubic.EaseIn(t, b.z, c.z, d))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Cubic.EaseOut(t, b.x, c.x, d), Easing.Cubic.EaseOut(t, b.y, c.y, d), Easing.Cubic.EaseOut(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Cubic.EaseInOut(t, b.x, c.x, d), Easing.Cubic.EaseInOut(t, b.y, c.y, d), Easing.Cubic.EaseInOut(t, b.z, c.z, d))
		
	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Cubic.EaseOutIn(t, b.x, c.x, d), Easing.Cubic.EaseOutIn(t, b.y, c.y, d), Easing.Cubic.EaseOutIn(t, b.z, c.z, d))

class Elastic:
# a = amplitude; p = period
	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float, a: float = 0, p: float = 0) -> Vector3:
		return Vector3(Easing.Elastic.EaseIn(t, b.x, c.x, d, a, p), Easing.Elastic.EaseIn(t, b.y, c.y, d, a, p), Easing.Elastic.EaseIn(t, b.z, c.z, d, a, p))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float, a: float = 0, p: float = 0) -> Vector3:
		return Vector3(Easing.Elastic.EaseOut(t, b.x, c.x, d, a, p), Easing.Elastic.EaseOut(t, b.y, c.y, d, a, p), Easing.Elastic.EaseOut(t, b.z, c.z, d, a, p))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float, a: float = 0, p: float = 0) -> Vector3:
		return Vector3(Easing.Elastic.EaseInOut(t, b.x, c.x, d, a, p), Easing.Elastic.EaseInOut(t, b.y, c.y, d, a, p), Easing.Elastic.EaseInOut(t, b.z, c.z, d, a, p))

	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float, a: float = 0, p: float = 0) -> Vector3:
		return Vector3(Easing.Elastic.EaseOutIn(t, b.x, c.x, d, a, p), Easing.Elastic.EaseOutIn(t, b.y, c.y, d, a, p), Easing.Elastic.EaseOutIn(t, b.z, c.z, d, a, p))

class Expo:

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Expo.EaseIn(t, b.x, c.x, d), Easing.Expo.EaseIn(t, b.y, c.y, d), Easing.Expo.EaseIn(t, b.z, c.z, d))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Expo.EaseOut(t, b.x, c.x, d), Easing.Expo.EaseOut(t, b.y, c.y, d), Easing.Expo.EaseOut(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Expo.EaseInOut(t, b.x, c.x, d), Easing.Expo.EaseInOut(t, b.y, c.y, d), Easing.Expo.EaseInOut(t, b.z, c.z, d))
		
	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Expo.EaseOutIn(t, b.x, c.x, d), Easing.Expo.EaseOutIn(t, b.y, c.y, d), Easing.Expo.EaseOutIn(t, b.z, c.z, d))

class Linear:

	static func EaseNone(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Linear.EaseIn(t, b.x, c.x, d), Easing.Linear.EaseIn(t, b.y, c.y, d), Easing.Linear.EaseNone(t, b.z, c.z, d))

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Linear.EaseIn(t, b.x, c.x, d), Easing.Linear.EaseIn(t, b.y, c.y, d), Easing.Linear.EaseIn(t, b.z, c.z, d))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Linear.EaseOut(t, b.x, c.x, d), Easing.Linear.EaseOut(t, b.y, c.y, d), Easing.Linear.EaseOut(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Linear.EaseInOut(t, b.x, c.x, d), Easing.Linear.EaseInOut(t, b.y, c.y, d), Easing.Linear.EaseInOut(t, b.z, c.z, d))
		
	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Linear.EaseOutIn(t, b.x, c.x, d), Easing.Linear.EaseOutIn(t, b.y, c.y, d), Easing.Linear.EaseOutIn(t, b.z, c.z, d))

class Quad:

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quad.EaseIn(t, b.x, c.x, d), Easing.Quad.EaseIn(t, b.y, c.y, d), Easing.Quad.EaseIn(t, b.z, c.z, d))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quad.EaseOut(t, b.x, c.x, d), Easing.Quad.EaseOut(t, b.y, c.y, d), Easing.Quad.EaseOut(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quad.EaseInOut(t, b.x, c.x, d), Easing.Quad.EaseInOut(t, b.y, c.y, d), Easing.Quad.EaseInOut(t, b.z, c.z, d))
		
	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quad.EaseOutIn(t, b.x, c.x, d), Easing.Quad.EaseOutIn(t, b.y, c.y, d), Easing.Quad.EaseOutIn(t, b.z, c.z, d))

class Quart:

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quart.EaseIn(t, b.x, c.x, d), Easing.Quart.EaseIn(t, b.y, c.y, d), Easing.Quart.EaseIn(t, b.z, c.z, d))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quart.EaseOut(t, b.x, c.x, d), Easing.Quart.EaseOut(t, b.y, c.y, d), Easing.Quart.EaseOut(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quart.EaseInOut(t, b.x, c.x, d), Easing.Quart.EaseInOut(t, b.y, c.y, d), Easing.Quart.EaseInOut(t, b.z, c.z, d))
		
	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quart.EaseOutIn(t, b.x, c.x, d), Easing.Quart.EaseOutIn(t, b.y, c.y, d), Easing.Quart.EaseOutIn(t, b.z, c.z, d))

class Quint:

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quint.EaseIn(t, b.x, c.x, d), Easing.Quint.EaseIn(t, b.y, c.y, d), Easing.Quint.EaseIn(t, b.z, c.z, d))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quint.EaseOut(t, b.x, c.x, d), Easing.Quint.EaseOut(t, b.y, c.y, d), Easing.Quint.EaseOut(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quint.EaseInOut(t, b.x, c.x, d), Easing.Quint.EaseInOut(t, b.y, c.y, d), Easing.Quint.EaseInOut(t, b.z, c.z, d))
		
	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Quint.EaseOutIn(t, b.x, c.x, d), Easing.Quint.EaseOutIn(t, b.y, c.y, d), Easing.Quint.EaseOutIn(t, b.z, c.z, d))

class Sine:

	static func EaseIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Sine.EaseIn(t, b.x, c.x, d), Easing.Sine.EaseIn(t, b.y, c.y, d), Easing.Sine.EaseIn(t, b.z, c.z, d))

	static func EaseOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Sine.EaseOut(t, b.x, c.x, d), Easing.Sine.EaseOut(t, b.y, c.y, d), Easing.Sine.EaseOut(t, b.z, c.z, d))

	static func EaseInOut(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Sine.EaseInOut(t, b.x, c.x, d), Easing.Sine.EaseInOut(t, b.y, c.y, d), Easing.Sine.EaseInOut(t, b.z, c.z, d))
		
	static func EaseOutIn(t: float, b: Vector3, c: Vector3, d: float) -> Vector3:
		return Vector3(Easing.Sine.EaseOutIn(t, b.x, c.x, d), Easing.Sine.EaseOutIn(t, b.y, c.y, d), Easing.Sine.EaseOutIn(t, b.z, c.z, d))
