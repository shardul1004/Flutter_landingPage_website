//
// Stack(
// children: [
// // capsule gradient
// Positioned(
// top:_animation.value,
// left: -40,
// child:Transform.rotate(
// angle: (3*pi)/4,
// child: Container(
// width: (MediaQuery.of(context).size.width*0.3255208333),
// height: ((MediaQuery.of(context).size.width*0.3255208333)*0.6),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(200),
// gradient: LinearGradient(
// colors: [Color(0xFF9159CB).withOpacity(1), Color(0xFF3500FF).withOpacity(1)],
// ),
// ),
// ),
// )
// ),
//
// // Backdrop filter
// Positioned(
// top:0,
// left: 0,
// child:Transform.rotate(
// angle: (3*pi)/4,
// child: BackdropFilter(
// filter: ImageFilter.blur(
// sigmaX: 100,
// sigmaY: 90,
//
// ),
// child: Container(
// width: 400,
// height: 500,
// ),
// ),
// )
// ),
//
// ],