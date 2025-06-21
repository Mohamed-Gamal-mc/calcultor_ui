// } else if (operator == '+') {
//       leftHandSide += convertToDouble(resultText);
//       operatorSympol = operator;
//       setState(() {
//         resultText = '';
//       });
//     } else if (operator == '-') {
//       leftHandSide -= convertToDouble(resultText);
//       operatorSympol = operator;
//       setState(() {
//         resultText = '';
//       });
//     } else if (operator == '*') {
//       leftHandSide = convertToDouble(resultText);
//       operatorSympol = operator;
//       setState(() {
//         resultText = '';
//       });
//     } else if (operator == '/') {
//       leftHandSide = convertToDouble(resultText);
//       operatorSympol = operator;
//       setState(() {
//         resultText = '';
//       });
//     } else if (operator == 'cl') {
//       resultText = '';
//       leftHandSide = 0;
//       rightHandSide = 0;
//       setState(() {});
//     } else if (operator == '=') {
//       rightHandSide = convertToDouble(resultText);
//       if (operatorSympol == '+') {
//         setState(() {
//           resultText = '${leftHandSide + rightHandSide}';
//         });
//       } else if (operatorSympol == '-') {
//         setState(() {
//           resultText = '${leftHandSide - rightHandSide}';
//         });
//       } else if (operatorSympol == '*') {
//         setState(() {
//           resultText = '${leftHandSide * rightHandSide}';
//         });
//       } else if (operatorSympol == '/') {
//         if (rightHandSide == 0) {
//           setState(() {
//             resultText = 'you cant divider on zero';
//           });
//         } else {
//           setState(() {
//             resultText = '${leftHandSide / rightHandSide}';
//           });
//         }
//       }
//     }
//   }