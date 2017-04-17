# ubi的制作


* 该文件制作的ubi为rootfs，data均可写.

* 改变如下参数即可变为只读
```
Index: ubirootfs.cfg
===================================================================
--- ubirootfs.cfg(revision 68)
+++ ubirootfs.cfg(working copy)
@@ -2,5 +2,6 @@
     mode=ubi
     image=ubirootfs.pkg
     vol_id=0
-    vol_type=static
+    vol_size=17776640
+    vol_type=dynamic
     vol_name=rootfs
```
