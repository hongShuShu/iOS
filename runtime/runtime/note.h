//
//  note.h
//  runtime
//
//  Created by xhwl on 2018/7/24.
//  Copyright © 2018年 红蜀黍. All rights reserved.
//

#ifndef note_h
#define note_h


总结：
从一个对象调用方法之后，会转化成objc_msgSend函数，
但是假如对象没有实现这个方法，系统会给一个补救的机会，resolveInstanceMethod和resolveClassMethod动态添加方法实现。
如果这两个方法中没有做处理的话，还可以在forwardingTargetForSelector中拦截，将消息转发给其他的对象。

还可以通过对方法进行签名，利用NSInvocation来实现消息的转发。




#endif /* note_h */
