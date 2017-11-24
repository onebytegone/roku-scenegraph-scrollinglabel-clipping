function main() as void
   port = createObject("roMessagePort")
   screen = createObject("roSGScreen")
   screen.setMessagePort(port)

   scene = screen.createScene("MainScene")
   scene.backgroundUri = ""
   scene.backgroundColor="#333333FF"
   screen.show()

   while true
      msg = wait(0, port)
      msgType = type(msg)
      if msgType = "roSGScreenEvent"
         if msg.isScreenClosed()
            return
         end if
      end if
   end while
end function
