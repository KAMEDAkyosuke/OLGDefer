//
//  OLGDefer.h
//  Pods
//
//  Created by organlounge on 2015/04/03.
//
//

#import <Foundation/Foundation.h>

/** OLGDefer インスタンスの破棄時に呼び出される処理の型 */
typedef void(^OLGDeferTask)();

@interface OLGDefer : NSObject

/** OLGDefer インスタンスを作成し、破棄時に呼び出される処理を登録する
 *
 * `defer(...)` マクロを使用すると変数宣言までやってくれるので便利
 *
 * @param task インスタンスの破棄時に呼び出される処理
 * @return OLGDefer インスタンス
 */
+(instancetype)deferWithTask:(OLGDeferTask)task;

@end

// see. https://gist.github.com/kenpusney/b7a317c16831d2bbc6de
#define OLGGensymImpl2(cn, ln) OLGGensym##c##cn##l##ln
#define OLGGensymImpl1(cn, ln) OLGGensymImpl2(cn, ln)
#define OLGGensym() OLGGensymImpl1(__COUNTER__, __LINE__)

/** ユーティリティマクロ
 *
 * @param t OLGDeferTask 型。インスタンスの破棄時に呼び出される処理
 */

#define defer(t) __attribute__((unused)) OLGDefer *OLGGensym() = [OLGDefer deferWithTask:(t)]
