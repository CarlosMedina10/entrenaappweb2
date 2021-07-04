import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
class SimpleRoundIconButton extends StatelessWidget {

  final Color backgroundColor;
  final AutoSizeText buttonText;
  final Color textColor;
  final Icon icon;
  final Color iconColor;
  final Alignment iconAlignment;
  final Function onPressed;

  SimpleRoundIconButton({
    this.backgroundColor = Colors.redAccent,
    this.buttonText = const AutoSizeText("REQUIRED TEXT"),
    this.textColor = Colors.white,
    this.icon = const Icon(Icons.email),
    this.iconColor,
    this.iconAlignment = Alignment.centerLeft,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              splashColor: this.backgroundColor,
              color: this.backgroundColor,
              child: new Row(
                children: <Widget>[

                  iconAlignment == Alignment.centerLeft ? new Transform.translate(
                    offset: Offset(-10.0, 0.0),
                    child: new Container(
                      padding: const EdgeInsets.all(5.0),
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius:
                            new BorderRadius.circular(28.0)),
                        splashColor: Colors.white,
                        color: Colors.white,
                        child: Icon(
                          icon.icon,
                          color: iconColor == null ? backgroundColor : iconColor,
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ) : Container(),

                  iconAlignment == Alignment.centerLeft ? new Expanded(
                    child: Container(),
                  ): Container(),

                  new Container(
               
                    width: MediaQuery.of(context).size.width*0.45,
                    padding: const EdgeInsets.only( left: 20.0,),
                    child: buttonText,
                  ),

                  iconAlignment == Alignment.centerRight ? new Expanded(
                    child: Container(),
                  ): Container(),

                  iconAlignment == Alignment.centerRight ? new Transform.translate(
                    offset: Offset(10.0, 0.0),
                    child: new Container(
                      padding: const EdgeInsets.all(5.0),
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius:
                            new BorderRadius.circular(28.0)),
                        splashColor: Colors.white,
                        color: Colors.white,
                        child: Icon(
                          icon.icon,
                          color: iconColor == null ? backgroundColor : iconColor,
                        ),
                        onPressed: onPressed,
                      ),
                    ),
                  ) : Container()

                ],
              ),
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}