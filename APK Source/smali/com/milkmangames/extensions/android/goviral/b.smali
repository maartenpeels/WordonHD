.class public final Lcom/milkmangames/extensions/android/goviral/b;
.super Lcom/adobe/fre/FREContext;

# interfaces
.implements Lc/m/x/a/gv/at;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milkmangames/extensions/android/goviral/b$1;,
        Lcom/milkmangames/extensions/android/goviral/b$r;,
        Lcom/milkmangames/extensions/android/goviral/b$ad;,
        Lcom/milkmangames/extensions/android/goviral/b$ac;,
        Lcom/milkmangames/extensions/android/goviral/b$t;,
        Lcom/milkmangames/extensions/android/goviral/b$l;,
        Lcom/milkmangames/extensions/android/goviral/b$k;,
        Lcom/milkmangames/extensions/android/goviral/b$g;,
        Lcom/milkmangames/extensions/android/goviral/b$f;,
        Lcom/milkmangames/extensions/android/goviral/b$e;,
        Lcom/milkmangames/extensions/android/goviral/b$ab;,
        Lcom/milkmangames/extensions/android/goviral/b$aa;,
        Lcom/milkmangames/extensions/android/goviral/b$h;,
        Lcom/milkmangames/extensions/android/goviral/b$s;,
        Lcom/milkmangames/extensions/android/goviral/b$o;,
        Lcom/milkmangames/extensions/android/goviral/b$w;,
        Lcom/milkmangames/extensions/android/goviral/b$v;,
        Lcom/milkmangames/extensions/android/goviral/b$a;,
        Lcom/milkmangames/extensions/android/goviral/b$u;,
        Lcom/milkmangames/extensions/android/goviral/b$m;,
        Lcom/milkmangames/extensions/android/goviral/b$j;,
        Lcom/milkmangames/extensions/android/goviral/b$z;,
        Lcom/milkmangames/extensions/android/goviral/b$y;,
        Lcom/milkmangames/extensions/android/goviral/b$i;,
        Lcom/milkmangames/extensions/android/goviral/b$c;,
        Lcom/milkmangames/extensions/android/goviral/b$q;,
        Lcom/milkmangames/extensions/android/goviral/b$x;,
        Lcom/milkmangames/extensions/android/goviral/b$p;,
        Lcom/milkmangames/extensions/android/goviral/b$b;,
        Lcom/milkmangames/extensions/android/goviral/b$n;,
        Lcom/milkmangames/extensions/android/goviral/b$d;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static c:Lcom/adobe/fre/FREContext;

.field public static d:Lcom/milkmangames/extensions/android/goviral/a;

.field public static e:Z


# instance fields
.field public b:Landroid/app/Activity;

.field private f:Lc/m/x/a/gv/aq;

.field private g:Landroid/content/SharedPreferences;

.field private h:Ljava/lang/String;

.field private i:Lcom/facebook/RequestAsyncTask;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/facebook/AppEventsLogger;

.field private t:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field private u:Lcom/facebook/widget/FacebookDialog$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.twitdroid"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.handmark.tweetcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.thedeck.android"

    aput-object v2, v0, v1

    sput-object v0, Lcom/milkmangames/extensions/android/goviral/b;->a:[Ljava/lang/String;

    sput-boolean v3, Lcom/milkmangames/extensions/android/goviral/b;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    return-void
.end method

.method protected static a(Lcom/facebook/FacebookRequestError$Category;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    if-ne p0, v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    if-ne p0, v1, :cond_3

    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    if-ne p0, v1, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    if-ne p0, v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    if-ne p0, v1, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    if-ne p0, v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method private static a(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v11, 0x0

    const-string v10, "[GVExtension]"

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse bitmap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    :try_start_2
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "[GVExtension]"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Image size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_0
    if-eqz v2, :cond_2

    const-string v3, "[GVExtension]"

    const-string v3, "inData"

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "[GVExtension]"

    const-string v3, "create"

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v4, v11

    :goto_1
    if-ge v4, v0, :cond_1

    move v5, v11

    :goto_2
    if-ge v5, v1, :cond_0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v9, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v8

    invoke-virtual {v2, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move v1, v2

    :goto_3
    const-string v3, "[GVExtension]"

    const-string v3, "Encoding failed!"

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    move v1, v2

    move-object v2, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v2

    :goto_4
    return-object v0

    :catch_1
    move-exception v0

    const-string v0, "[GVExtension]"

    const-string v0, "Failed releasing image"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_4

    :cond_2
    const-string v0, "[GVExtension]"

    const-string v0, "In data not valid"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v12, v1

    move v1, v2

    move v2, v0

    move-object v0, v12

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;)Landroid/net/Uri;
    .locals 14

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v12, "[GVExtension]"

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "[GVExtension]"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Image size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move v6, v13

    :goto_1
    if-ge v6, v2, :cond_1

    move v7, v13

    :goto_2
    if-ge v7, v1, :cond_0

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    shr-int/lit8 v9, v8, 0x18

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v9, 0x18

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v11, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v10

    invoke-virtual {v3, v7, v6, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "[GVExtension]"

    const-string v0, "Encoding failed!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    :goto_3
    return-object v0

    :catch_1
    move-exception v4

    const-string v4, "[GVExtension]"

    const-string v4, "File caching failed"

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {v3, v1, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v1, "[GVExtension]"

    const-string v1, "Failed releasing image"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    const-string v0, "[GVExtension]"

    const-string v0, "Failed to write temp image stream."

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Lcom/adobe/fre/FREByteArray;)Landroid/net/Uri;
    .locals 6

    const/4 v4, 0x0

    const-string v5, "[GVExtension]"

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREByteArray;->acquire()V

    invoke-virtual {p1}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_0

    const-string v0, "[GVExtension]"

    const-string v0, "no out file."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "[GVExtension]"

    const-string v0, "Encoding failed!"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "[GVExtension]"

    const-string v1, "File caching failed"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "[GVExtension]"

    const-string v0, "Failed closing stream."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method protected static a(Lcom/adobe/fre/FREArray;Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "[GVExtension]"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const/high16 v5, 0x10000

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "message/rfc822"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    move v7, v0

    goto :goto_1

    :cond_2
    if-nez v7, :cond_1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    move v0, v7

    goto :goto_2
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const-string v6, "link"

    const-string v5, "friends"

    const-string v4, "description"

    const-string v3, "caption"

    const-string v2, "applicationName"

    new-instance v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_0
    const-string v1, "caption"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "caption"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setCaption(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_1
    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_2
    const-string v1, "description"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "description"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_3
    const-string v1, "picture"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "picture"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_4
    const-string v1, "link"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "link"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_5
    const-string v1, "applicationName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "applicationName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    :cond_6
    const-string v1, "place"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "place"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_7
    const-string v1, "ref"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ref"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setRef(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_8
    const-string v1, "friends"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "friends"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_9

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v0, v2}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setFriends(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_a
    const v1, 0x2f6bd

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;

    new-instance v1, Lcom/milkmangames/extensions/android/goviral/r;

    invoke-direct {v1, p0, p2}, Lcom/milkmangames/extensions/android/goviral/r;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->u:Lcom/facebook/widget/FacebookDialog$Callback;

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->t:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;)V
    .locals 9

    const-string v7, ""

    const-string v3, "[GVExtension]"

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[GVExtension]"

    const-string v0, "Can\'t stage image with no active session."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x194

    const-string v2, "Not authenticated with facebook."

    const-string v3, "me/staging_resources"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v0, ""

    const-string v0, ""

    move-object v0, p0

    move-object v4, p2

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "[GVExtension]"

    const-string v1, "Parsing image.."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "[GVExtension]"

    const-string v2, "Staging..."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/c;

    invoke-direct {v2, p0, p2}, Lcom/milkmangames/extensions/android/goviral/c;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/Request;->newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->l()Lcom/facebook/AppEventsLogger;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;I)V
    .locals 6

    const-string v5, "[GVExtension]"

    const-string v0, "[GVExtension]"

    const-string v0, "request auth-read session.."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[GVExtension]"

    const-string v0, "auth called with open session; exit"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Set array list "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->o()Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    const-string v2, "[GVExtension]"

    const-string v2, "Building a new session-:"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/facebook/Session$Builder;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v2

    new-instance v3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    invoke-virtual {v2}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    const-string v3, "[GVExtension]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "have session.  Open?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",closed?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/Session;->isClosed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",state?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    if-nez p2, :cond_3

    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v3, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    :cond_2
    :goto_2
    sget-object v4, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v3, v4}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    invoke-virtual {v3, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    invoke-virtual {v3, v0}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    const v0, 0x23c912

    invoke-virtual {v3, v0}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    const-string v0, "[GVExtension]"

    const-string v0, "Open auth session request"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v3, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_5

    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v3, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    goto :goto_2

    :cond_5
    const/4 v4, 0x3

    if-ne p2, v4, :cond_6

    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v3, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    goto :goto_2

    :cond_6
    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v3, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    goto :goto_2
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->l()Lcom/facebook/AppEventsLogger;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "picture"

    invoke-static {p2}, Lcom/milkmangames/extensions/android/goviral/b;->b(Lcom/adobe/fre/FREBitmapData;)[B

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "message"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    const-string v4, "publish_actions"

    move-object v0, p0

    move-object v1, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x1

    const-string v9, "url"

    const-string v6, "title"

    const-string v5, "description"

    const-string v8, "applicationName"

    const/4 v0, 0x0

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    :goto_0
    if-eqz p4, :cond_6

    invoke-static {p4}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-static {p1}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;

    move-result-object v3

    invoke-static {p2}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v4

    const-string v0, "title"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "title"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/model/OpenGraphObject;->setTitle(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v0, "url"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "url"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/model/OpenGraphObject;->setUrl(Ljava/lang/String;)V

    const-string v0, "url"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    const-string v0, "description"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "description"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/model/OpenGraphObject;->setDescription(Ljava/lang/String;)V

    const-string v0, "description"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Lcom/facebook/model/OpenGraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-interface {v3, v1, v4}, Lcom/facebook/model/OpenGraphAction;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;-><init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    new-array v1, v7, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->setImageAttachmentsForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    :cond_4
    const-string v1, "applicationName"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "applicationName"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    const-string v1, "applicationName"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    const v1, 0x2f6be

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;

    new-instance v1, Lcom/milkmangames/extensions/android/goviral/n;

    invoke-direct {v1, p0, p5}, Lcom/milkmangames/extensions/android/goviral/n;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->u:Lcom/facebook/widget/FacebookDialog$Callback;

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->t:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-void

    :cond_6
    move-object v2, v0

    goto/16 :goto_1

    :cond_7
    move-object v1, p2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    const-string v0, ","

    invoke-virtual {p6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    if-lez v1, :cond_0

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    array-length p1, p5

    if-lez p1, :cond_1

    const-string p1, "android.intent.extra.CC"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    array-length p1, p6

    if-lez p1, :cond_2

    const-string p1, "android.intent.extra.BCC"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_4

    const-string p1, "text/html"

    const-string p2, "android.intent.extra.TEXT"

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :goto_0
    invoke-static {p8, p7}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "image/jpeg"

    :cond_3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p9, p0, Lcom/milkmangames/extensions/android/goviral/b;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string p3, "Send with:"

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "android.intent.extra.INITIAL_INTENTS"

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/os/Parcelable;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const p1, 0x2f6bb

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_4
    const-string p1, "text/plain"

    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const p1, 0x2f6bb

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREByteArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    const-string v0, ","

    invoke-virtual {p6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    if-lez v1, :cond_0

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    array-length p1, p5

    if-lez p1, :cond_1

    const-string p1, "android.intent.extra.CC"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    array-length p1, p6

    if-lez p1, :cond_2

    const-string p1, "android.intent.extra.BCC"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_4

    const-string p1, "android.intent.extra.TEXT"

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :goto_0
    invoke-static {p9, p7}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Lcom/adobe/fre/FREByteArray;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    iput-object p10, p0, Lcom/milkmangames/extensions/android/goviral/b;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string p3, "Send with:"

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "android.intent.extra.INITIAL_INTENTS"

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/os/Parcelable;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const p1, 0x2f6bb

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_4
    const-string p1, "android.intent.extra.TEXT"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const p1, 0x2f6bb

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const v6, 0x2f6bb

    const/4 v5, 0x0

    const-string v7, "android.intent.extra.TEXT"

    const-string v3, ","

    const-string v0, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    if-lez v4, :cond_0

    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    array-length v0, v1

    if-lez v0, :cond_1

    const-string v0, "android.intent.extra.CC"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    array-length v0, v2

    if-lez v0, :cond_2

    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_3

    const-string v0, "text/html"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :goto_0
    iput-object p7, p0, Lcom/milkmangames/extensions/android/goviral/b;->q:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/milkmangames/extensions/android/goviral/b;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    const-string v0, "[GVExtension]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Client intents length:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v2, "Send with:"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    new-array v0, v5, [Landroid/os/Parcelable;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_3
    const-string v0, "text/plain"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v0, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/fre/FREBitmapData;Ljava/lang/String;)V
    .locals 4

    const-string v3, "text/html"

    const-string v2, "android.intent.extra.TEXT"

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/html"

    if-eqz p3, :cond_0

    const-string v1, "text/html"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :goto_0
    const-string v1, "image_1"

    invoke-static {v1, p4}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image/jpeg"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p5, p0, Lcom/milkmangames/extensions/android/goviral/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const v2, 0x2f6ba

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const-string v2, "android.intent.extra.TEXT"

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :goto_0
    iput-object p4, p0, Lcom/milkmangames/extensions/android/goviral/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const v2, 0x2f6b9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v4, "access_token"

    const-string v5, "[GVExtension]"

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BEFORE:0 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/b;->h:Ljava/lang/String;

    iput-object v6, p0, Lcom/milkmangames/extensions/android/goviral/b;->t:Lcom/facebook/widget/FacebookDialog$PendingCall;

    iput-object v6, p0, Lcom/milkmangames/extensions/android/goviral/b;->m:Ljava/lang/String;

    sget-boolean v0, Lcom/milkmangames/extensions/android/goviral/b;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->n()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v8}, Lcom/facebook/Settings;->setPlatformCompatibilityEnabled(Z)V

    :cond_1
    const-string v0, "[GVExtension]"

    const-string v0, "Get active session.."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->o()Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/milkmangames/extensions/android/goviral/b;->g:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/b;->g:Landroid/content/SharedPreferences;

    const-string v3, "access_token"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/milkmangames/extensions/android/goviral/a;

    invoke-direct {v3, p1, v1, v2}, Lcom/milkmangames/extensions/android/goviral/a;-><init>(Ljava/lang/String;Lcom/facebook/Session$StatusCallback;Ljava/lang/String;)V

    sput-object v3, Lcom/milkmangames/extensions/android/goviral/b;->d:Lcom/milkmangames/extensions/android/goviral/a;

    invoke-static {p1}, Lcom/facebook/Settings;->setApplicationId(Ljava/lang/String;)V

    if-nez v0, :cond_6

    if-eqz v2, :cond_2

    const-string v0, "[GVExtension]"

    const-string v0, "with old token!"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "access_token"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const-string v0, "[GVExtension]"

    const-string v0, "Null session at start."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/facebook/Session$Builder;

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v0

    new-instance v3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-static {v2, v6, v6, v6, v6}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "[GVExtension]"

    const-string v3, "Open new session from legacy storage"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2, v1}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string v2, "[GVExtension]"

    const-string v2, "Auto restart session"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "[GVExtension]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STATE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "[GVExtension]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "->--With token?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    sget-object v4, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-ne v3, v4, :cond_5

    move v3, v8

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    new-instance v2, Lcom/facebook/Session$OpenRequest;

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    :cond_4
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v3, v7

    goto :goto_1

    :cond_6
    const-string v2, "[GVExtension]"

    const-string v2, "Open stored session, no ui."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    new-instance v2, Lcom/facebook/Session$OpenRequest;

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    :cond_7
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;Z)V
    .locals 4

    const-string v3, "text/plain"

    const-string v0, "text/plain"

    invoke-direct {p0, v3}, Lcom/milkmangames/extensions/android/goviral/b;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "twattachment"

    invoke-static {v1, p2}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iput-object p3, p0, Lcom/milkmangames/extensions/android/goviral/b;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    if-eqz p4, :cond_2

    const v2, 0x23c913

    :goto_2
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v1, "[GVExtension]"

    const-string v2, "Twitter intent did not allow image attachment."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const v2, 0x2f6bc

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    invoke-static {}, Lcom/milkmangames/extensions/android/goviral/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "[GVExtension]"

    const-string v1, "Graph->GetSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const/4 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_8

    const-string v2, ""

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ","

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v8, v3

    move v3, v0

    move v0, v8

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "[GVExtension]"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No current write permission for \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v0, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_3
    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/b;->l:Ljava/lang/String;

    new-instance v5, Lcom/milkmangames/extensions/android/goviral/v;

    invoke-direct {v5, p0, p1, p4, p5}, Lcom/milkmangames/extensions/android/goviral/v;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[GVExtension]"

    const-string v2, "Graph->Task"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/facebook/Request;

    const-string v2, "GET"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "POST"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v4, v2

    :goto_4
    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    if-eqz p6, :cond_4

    const-string v1, "v1.0"

    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setVersion(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/facebook/RequestAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    if-eqz v7, :cond_7

    iput-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->i:Lcom/facebook/RequestAsyncTask;

    iput-object p5, p0, Lcom/milkmangames/extensions/android/goviral/b;->n:Ljava/lang/String;

    const-string v0, "[GVExtension]"

    const-string v1, "Reauthorizing for graph publish permissions."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    const v1, 0x23c912

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "DELETE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    move-object v4, v2

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v4, v2

    goto :goto_4

    :cond_7
    const-string v0, "[GVExtension]"

    const-string v2, "Graph execute"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_8
    move v7, v0

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "text/plain"

    invoke-direct {p0, v0}, Lcom/milkmangames/extensions/android/goviral/b;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/b;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    if-eqz p3, :cond_1

    const v2, 0x23c913

    :goto_1
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const v2, 0x2f6bc

    goto :goto_1
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/milkmangames/extensions/android/goviral/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->m:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->refreshPermissions()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/fre/FREBitmapData;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "SMS"

    iput-object p6, p0, Lcom/milkmangames/extensions/android/goviral/b;->p:Ljava/lang/String;

    const-string v0, "SINAWEIBO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const-string v0, "TWITTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p4, p6, v4}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;Z)V

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p6, v4}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v4

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_9

    if-eqz p4, :cond_9

    const-string v0, "SMS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "image_1"

    invoke-static {v0, p4}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Lcom/adobe/fre/FREBitmapData;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    const-string v1, "FACEBOOK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->m()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string v3, "SMS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Lcom/milkmangames/extensions/android/goviral/b;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "image/jpeg"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const v2, 0x23c913

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v4

    goto :goto_0

    :cond_7
    move-object v2, p2

    goto :goto_2

    :cond_8
    move-object v1, v2

    move-object v2, p2

    goto :goto_3

    :cond_9
    move-object v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/goviral/b;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    :goto_0
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 4

    const-string v3, "[GVExtension]"

    const-string v0, "[GVExtension]"

    const-string v0, "in is"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No active session to check permission "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/facebook/Session;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "[GVExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Granted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sms:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic b(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/milkmangames/extensions/android/goviral/b;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const-string v6, "message"

    const-string v5, "link"

    const-string v4, "description"

    const-string v3, "caption"

    const-string v2, "applicationName"

    new-instance v0, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;-><init>(Landroid/app/Activity;)V

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_0
    const-string v1, "caption"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "caption"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setCaption(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_1
    const-string v1, "message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_2
    const-string v1, "description"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "description"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_3
    const-string v1, "picture"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "picture"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_4
    const-string v1, "link"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "link"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_5
    const-string v1, "applicationName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "applicationName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    :cond_6
    const-string v1, "ref"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ref"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setRef(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    :cond_7
    const v1, 0x2f6bf

    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;

    new-instance v1, Lcom/milkmangames/extensions/android/goviral/q;

    invoke-direct {v1, p0, p2}, Lcom/milkmangames/extensions/android/goviral/q;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->u:Lcom/facebook/widget/FacebookDialog$Callback;

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->t:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-void
.end method

.method static synthetic b(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "[GVExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service check:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SINAWEIBO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "FACEBOOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->m()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const-string v0, "TWITTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->k()Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "test"

    invoke-direct {p0, v0}, Lcom/milkmangames/extensions/android/goviral/b;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/milkmangames/extensions/android/goviral/b;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    :goto_0
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentMessageDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v3, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    goto :goto_0
.end method

.method private static b(Lcom/adobe/fre/FREBitmapData;)[B
    .locals 15

    const/4 v6, 0x0

    const/16 v13, 0x27

    const/4 v12, 0x0

    const-string v11, "[GVExtension]"

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    :try_start_2
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "[GVExtension]"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Image size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v14, v1

    move v1, v0

    move v0, v14

    :goto_0
    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v5, v12

    :goto_1
    if-ge v5, v0, :cond_1

    move v6, v12

    :goto_2
    if-ge v6, v1, :cond_0

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v7, 0x10

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v8, v8, 0x18

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v10, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v9

    invoke-virtual {v2, v6, v5, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v12

    move v1, v12

    :goto_3
    const-string v2, "[GVExtension]"

    const-string v2, "Encoding failed!"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wrote bitmap height-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "results in px39:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    return-object v0

    :catch_1
    move-exception v1

    const-string v1, "[GVExtension]"

    const-string v1, "Failed releasing image"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v1

    move v1, v0

    move v0, v12

    goto :goto_3

    :catch_3
    move-exception v2

    move v14, v1

    move v1, v0

    move v0, v14

    goto :goto_3

    :cond_2
    move-object v0, v6

    goto :goto_4
.end method

.method private c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/milkmangames/extensions/android/goviral/b;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v5, Lcom/milkmangames/extensions/android/goviral/b;->a:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->i:Lcom/facebook/RequestAsyncTask;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/Session;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/milkmangames/extensions/android/goviral/b;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/milkmangames/extensions/android/goviral/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance v1, Lcom/milkmangames/extensions/android/goviral/s;

    invoke-direct {v1, p0, p2}, Lcom/milkmangames/extensions/android/goviral/s;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "[GVExtension]"

    invoke-static {}, Lcom/milkmangames/extensions/android/goviral/b;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "[GVExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in new publish is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v6

    move v3, v6

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "[GVExtension]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No current write permission for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v1

    move v4, v6

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    const-string v1, "[GVExtension]"

    const-string v1, "requesting new publish permissions."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[GVExtension]"

    const-string v1, "FBWrap request new publish start."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/b;->k:Ljava/lang/String;

    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    const v0, 0x23c912

    invoke-virtual {v1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    move v0, v8

    :goto_3
    return v0

    :cond_3
    move v0, v6

    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_2
.end method

.method static synthetic d(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/milkmangames/extensions/android/goviral/b;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const-string v6, "to"

    const-string v5, "title"

    const-string v4, "message"

    const-string v3, "data"

    invoke-static {}, Lcom/milkmangames/extensions/android/goviral/b;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance v1, Lcom/milkmangames/extensions/android/goviral/t;

    invoke-direct {v1, p0, p2}, Lcom/milkmangames/extensions/android/goviral/t;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    const-string v0, "message"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "message"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    :cond_0
    const-string v0, "title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    :cond_1
    const-string v0, "to"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "to"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setTo(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    :cond_2
    const-string v0, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setData(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    :cond_4
    return-void
.end method

.method static synthetic d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic d(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "[GVExtension]"

    invoke-static {}, Lcom/milkmangames/extensions/android/goviral/b;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v6

    move v3, v6

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "[GVExtension]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No current read permission for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v1

    move v4, v6

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    const-string v1, "[GVExtension]"

    const-string v1, "requesting new read permissions."

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/b;->j:Ljava/lang/String;

    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    const v0, 0x23c912

    invoke-virtual {v1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    move v0, v7

    :goto_3
    return v0

    :cond_3
    move v0, v6

    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_2
.end method

.method static synthetic e(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/u;

    invoke-direct {v2, p0, p1}, Lcom/milkmangames/extensions/android/goviral/u;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/Request;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    new-instance v1, Lcom/facebook/RequestAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic f(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V
    .locals 5

    const-string v4, "android.intent.action.VIEW"

    :try_start_0
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.facebook.katana"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v1, 0x2dd1e2

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.facebook.com/profile.php?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fb://facewebmodal/f?href="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fb://profile/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://m.facebook.com/profile.php?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method static synthetic f()Z
    .locals 1

    invoke-static {}, Lcom/milkmangames/extensions/android/goviral/b;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/milkmangames/extensions/android/goviral/b;)Lcom/facebook/RequestAsyncTask;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->i:Lcom/facebook/RequestAsyncTask;

    return-object v0
.end method

.method static synthetic g()V
    .locals 1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    :cond_0
    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic h(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()D
    .locals 4

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/milkmangames/extensions/android/goviral/b;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static j()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    const-string v0, "text/plain"

    invoke-direct {p0, v0}, Lcom/milkmangames/extensions/android/goviral/b;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/milkmangames/extensions/android/goviral/b;)Z
    .locals 4

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentOpenGraphActionDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;)Z

    move-result v0

    return v0
.end method

.method private l()Lcom/facebook/AppEventsLogger;
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->s:Lcom/facebook/AppEventsLogger;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->s:Lcom/facebook/AppEventsLogger;

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->s:Lcom/facebook/AppEventsLogger;

    return-object v0
.end method

.method static synthetic l(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 2

    const-string v0, "[GVExtension]"

    const-string v1, "GoViral initializer-."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    new-instance v0, Lc/m/x/a/gv/aq;

    invoke-direct {v0, p0}, Lc/m/x/a/gv/aq;-><init>(Lcom/adobe/fre/FREContext;)V

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->f:Lc/m/x/a/gv/aq;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->f:Lc/m/x/a/gv/aq;

    invoke-virtual {v0, p0}, Lc/m/x/a/gv/aq;->a(Lc/m/x/a/gv/at;)V

    sput-object p0, Lcom/milkmangames/extensions/android/goviral/b;->c:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method private m()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.facebook.katana"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m(Lcom/milkmangames/extensions/android/goviral/b;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private n()V
    .locals 7

    const/4 v4, 0x0

    const-string v0, "[GVExtension]"

    const-string v1, "doDebugDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v0

    move v0, v4

    :goto_0
    if-ge v0, v2, :cond_0

    :try_start_1
    aget-object v4, v1, v0

    const-string v5, "SHA"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "DEBUG"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Your fb hashkey is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    const-string v3, "Mail it"

    new-instance v4, Lcom/milkmangames/extensions/android/goviral/w;

    invoke-direct {v4, p0, v0}, Lcom/milkmangames/extensions/android/goviral/w;-><init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    const-string v2, "Close"

    new-instance v3, Lcom/milkmangames/extensions/android/goviral/d;

    invoke-direct {v3, p0}, Lcom/milkmangames/extensions/android/goviral/d;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    const-string v2, "name not found"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    const-string v2, "no such an algorithm"

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    const-string v2, "exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method

.method static synthetic n(Lcom/milkmangames/extensions/android/goviral/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/goviral/b;->k()Z

    move-result v0

    return v0
.end method

.method private o()Lcom/facebook/Session$StatusCallback;
    .locals 1

    new-instance v0, Lcom/milkmangames/extensions/android/goviral/e;

    invoke-direct {v0, p0}, Lcom/milkmangames/extensions/android/goviral/e;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "[GVExtension]"

    const-string v1, "started fb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 4

    const-string v3, ""

    const-string v0, "[GVExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "r="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x23c912

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    :cond_0
    const v0, 0x2f6bc

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[[[GVRiD]]]18"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v3}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v0, 0x2f6bb

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[[[GVRiD]]]3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v3}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const v0, 0x2f6ba

    if-eq p1, v0, :cond_3

    const v0, 0x2f6b9

    if-ne p1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[[[GVRiD]]]30"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v3}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const v0, 0x23c913

    if-ne p1, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[[[GVRiD]]]51"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v3}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const v0, 0x2f6bd

    if-eq p1, v0, :cond_6

    const v0, 0x2f6be

    if-eq p1, v0, :cond_6

    const v0, 0x2f6bf

    if-ne p1, v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->t:Lcom/facebook/widget/FacebookDialog$PendingCall;

    if-nez v0, :cond_8

    :cond_7
    :goto_0
    return-void

    :cond_8
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->t:Lcom/facebook/widget/FacebookDialog$PendingCall;

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/b;->u:Lcom/facebook/widget/FacebookDialog$Callback;

    invoke-static {v0, v1, p1, p3, v2}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ERR]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[URL]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GVExtension]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FB Dialog failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[[[GVRiD]]]11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"permissions\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"gvShouldNotify\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"gvCategory\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"gvErrCode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"gvErr\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"gvUrl\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"gvUserMessage\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[[[GVRiD]]]13"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const-string v5, "{\"gvDialogType\":\""

    const-string v4, "[GVExtension]"

    const-string v3, "\"}"

    const-string v0, "[GVExtension]"

    const-string v0, "FBDialogFinished."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{\"gvDialogType\":\""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v0, "gvDialogType"

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    invoke-virtual {v1, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[GVExtension]"

    const-string v0, "Failed parsing fb dialog return values."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"gvDialogType\":\""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[[[GVRiD]]]9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"gvDialogType\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GVExtension]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "facebook dialog canceled :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[[[GVRiD]]]10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[URL]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GVExtension]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onrawresponse:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[[[GVRiD]]]12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "[GVExtension]"

    const-string v1, "Resume->activate publish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/goviral/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b;->b:Landroid/app/Activity;

    return-void
.end method

.method public final getFunctions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ffiInitGoViral"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$n;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$n;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiCanSendEmail"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$b;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$b;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowEmailComposer"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$x;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$x;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowEmailComposerWithBitmap"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$y;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$y;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowEmailComposerWithByteArray"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$z;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$z;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiInitFacebook"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$m;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$m;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiAuthenticateWithFacebook"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$a;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$a;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsFacebookAuthenticated"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$o;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$o;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiLogoutFacebook"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$s;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$s;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowFacebookFeedDialog"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$aa;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$aa;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowFacebookRequestDialog"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$ab;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$ab;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiFacebookGraphRequest"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$e;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$e;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiFacebookPostPhoto"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$g;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$g;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiGetAccessToken"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$k;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$k;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowTweetSheet"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$ac;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$ac;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowTweetSheetWithImage"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$ad;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$ad;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsTweetSheetAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$r;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$r;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsGenericShareAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$p;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$p;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShareGeneric"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$i;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$i;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShareGenericWithImage"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$j;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$j;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiPublishInstall"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$u;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$u;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiGetFbAccessExpiry"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$l;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$l;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiRequestNewReadPermissions"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$w;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$w;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiRequestNewPublishPermissions"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$v;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$v;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiFacebookLogAppEvent"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$f;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$f;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiFacebookRequestAppUserID"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$h;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$h;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiPresentFacebookProfileOrPage"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$t;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$t;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsServiceAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$q;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$q;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiDisplaySocialView"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/b$c;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/goviral/b$c;-><init>(Lcom/milkmangames/extensions/android/goviral/b;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsPermissionGranted"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/f;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/f;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiGetDeclinedPermissions"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/g;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/g;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsFacebookShareDialogAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/h;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/h;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowFacebookShareDialog"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/i;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/i;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsFacebookGraphDialogAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/j;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/j;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowFacebookGraphDialog"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/k;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/k;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiStageFacebookImage"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/l;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/l;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsFacebookMessageDialogAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/m;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/m;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowFacebookMessageDialog"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/o;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/o;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiRefreshSessionPermissions"

    new-instance v2, Lcom/milkmangames/extensions/android/goviral/p;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/goviral/p;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
