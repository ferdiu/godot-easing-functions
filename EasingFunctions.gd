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

class_name Easing

class Back:
# s = amplitude for "back" variation
	static func EaseIn(t: float, b: float, c: float, d: float, s: float = 1.70158) -> float:
		t = t / d
		return c * t * t * ((s + 1) * t - s) + b

	static func EaseOut(t: float, b: float, c: float, d: float, s: float = 1.70158) -> float:
		t = t / d - 1
		return c * (t * t * ((s + 1) * t + s) + 1) + b

	static func EaseInOut(t: float, b: float, c: float, d: float, s: float = 1.70158) -> float:
		t = t / d * 2
		s = s * 1.525
		if t < 1:
			return c / 2 * (t * t * ((s + 1) * t - s)) + b
		t = t - 2
		return c / 2 * (t * t * ((s + 1) * t + s) + 2) + b

	static func EaseOutIn(t: float, b: float, c: float, d: float, s: float = 1.70158) -> float:
		return EaseOut(t * 2, b, c / 2, d, s) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d, s)

class Bounce:

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d
		if t < 1 / 2.75:
			return c * (7.5625 * t * t) + b
		elif t < 2 / 2.75:
			t = t - (1.5 / 2.75)
			return c * (7.5625 * t * t + 0.75) + b
		elif t < 2.5 / 2.75:
			t = t - (2.25 / 2.75)
			return c * (7.5625 * t * t + 0.9375) + b
		else:
			t = t - (2.625 / 2.75)
			return c * (7.5625 * t * t + 0.984375) + b

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		return c - EaseOut(d-t, 0, c, d) + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		if (t < d/2):
			return EaseIn(t*2, 0, c, d) * 0.5 + b
		else:
			return EaseOut(t*2-d, 0, c, d) * 0.5 + c*0.5 + b

	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return EaseOut(t * 2, b, c / 2, d) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d)

class Circ:

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		t = t / d
		return -c * (sqrt(1 - t * t) - 1) + b

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d - 1
		return c * sqrt(1 - t * t) + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d * 2
		if t < 1:
			return -c / 2 * (sqrt(1 - t * t) - 1) + b
		t = t - 2
		return c / 2 * (sqrt(1 - t * t) + 1) + b
		
	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return EaseOut(t * 2, b, c / 2, d) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d)

class Cubic:

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		t = t / d
		return c * t * t * t + b

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d - 1
		return c * (t * t * t + 1) + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d * 2
		if t < 1:
			return c / 2 * t * t * t + b
		t = t - 2
		return c / 2 * (t * t * t + 2) + b

	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return EaseOut(t * 2, b, c / 2, d) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d)

class Elastic:
# a = amplitude; p = period
	static func EaseIn(t: float, b: float, c: float, d: float, a: float = 0, p: float = 0) -> float:
		if t == 0:
			return b
		t = t / d
		if t == 1:
			return b + c

		if p == 0:
			p = d * 0.3

		var s: float
		if a == 0 or a < abs(c):
			a = c
			s = p / 4
		else:
			s = p / (2 * PI) * asin(c / a)

		t = t - 1
		return -(a * pow(2, 10 * t) * sin((t * d - s) * (2 * PI) / p)) + b

	static func EaseOut(t: float, b: float, c: float, d: float, a: float = 0, p: float = 0) -> float:
		if t == 0:
			return b
		t = t / d
		if t == 1:
			return b + c
			
		if p == 0:
			p = d * 0.3

		var s: float
		if a == 0:
			a = c
			s = p / 4
		else:
			s = p / (2 * PI) * asin(c / a)

		return a * pow(2, -10 * t) * sin((t * d - s) * (2 * PI) / p) + c + b

	static func EaseInOut(t: float, b: float, c: float, d: float, a: float = 0, p: float = 0) -> float:
		if t == 0:
			return b
		t = t / d * 2
		if t == 2:
			return b + c
			
		if p == 0:
			p = d * 0.3 * 1.5
			
		var s: float
		if a == 0 or a < abs(c):
			a = c
			s = p / 4
		else:
			s = p / (2 * PI) * asin( c / a)
		
		if t < 1:
			t = t - 1
			return -0.5 * (a * pow(2, 10 * t) * sin((t * d - s) * (2 * PI) / p)) + b
		else:
			t = t - 1
			return a * pow(2, -10 * t) * sin((t * d - s) * (2 * PI) / p ) * 0.5 + c + b

	static func EaseOutIn(t: float, b: float, c: float, d: float, a: float = 0, p: float = 0) -> float:
		return EaseOut(t * 2, b, c / 2, d, a, p) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d, a, p)


class Expo:

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		return b if t==d else c * pow(2, 10 * (t / d - 1)) + b - c * 0.001

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		return b + c if t==d else c * 1.001 * (-pow(2, -10 * t / d) + 1) + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		if (t==0):
			return b
		if (t==d):
			return b+c
		t = t / d * 2
		if t < 1:
			return c / 2 * pow(2, 10 * (t - 1)) + b - c * 0.0005
		t = t - 1
		return c / 2 * 1.0005 * (-pow(2, -10 * t) + 2) + b

	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return EaseOut(t * 2, b, c / 2, d) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d)

class Linear:

	static func EaseNone(t: float, b: float, c: float, d: float) -> float:
		return c * t / d + b

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		return c * t / d + b

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		return c * t / d + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		return c * t / d + b

	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return c * t / d + b

class Quad:

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		t = t / d
		return c * t * t + b

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d
		return -c * t * (t - 2) + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d * 2
		return c / 2 * t * t + b if t < 1 else -c / 2 * ((t - 1) * (t - 3) - 1) + b

	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return EaseOut(t * 2, b, c / 2, d) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d)

class Quart:

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		t = t / d
		return c * t * t * t * t + b

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d - 1
		return -c * (t * t * t * t - 1) + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d * 2
		if t < 1:
			return c / 2 * t * t * t * t + b
		else:
			t = t - 2
			return -c / 2 * (t * t * t * t - 2) + b

	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return EaseOut(t * 2, b, c / 2, d) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d)

class Quint:

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		t = t / d
		return c * t * t * t * t * t + b

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d - 1
		return c*(t * t * t * t * t + 1) + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		t = t / d * 2
		if t < 1:
			return c / 2 * t * t * t * t * t + b
		else:
			t = t - 2
			return c / 2 * (t * t * t * t * t + 2) + b
		
	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return EaseOut(t * 2, b, c / 2, d) if t < d / 2 else EaseIn((t * 2) - d, b + c / 2, c / 2, d)

class Sine:

	static func EaseIn(t: float, b: float, c: float, d: float) -> float:
		return -c * cos(t/d * (PI/2)) + c + b

	static func EaseOut(t: float, b: float, c: float, d: float) -> float:
		return c * sin(t/d * (PI/2)) + b

	static func EaseInOut(t: float, b: float, c: float, d: float) -> float:
		return -c/2 * (cos(PI*t/d) - 1) + b

	static func EaseOutIn(t: float, b: float, c: float, d: float) -> float:
		return EaseOut(t * 2, b, c / 2, d) if t < d / 2 else EaseIn((t * 2) -d, b + c / 2, c / 2, d)
