.class public Lcom/immersion/hapticmediasdk/utils/Log;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z = false

.field public static b044A044Aъъъ044A:I = 0x30

.field public static b044Aъ044Aъъ044A:I = 0x1

.field public static bъъ044Aъъ044A:I = 0x0

.field public static bъъъ044Aъ044A:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    :cond_0
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->b044Aъ044Aъъ044A:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/utils/Log;->bъ044A044Aъъ044A()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->bъъ044Aъъ044A:I

    if-eq v0, v1, :cond_1

    const/16 v0, -0x51

    add-int/lit8 v0, v0, 0x6b

    mul-int/lit8 v0, v0, 0x3b

    const/4 v0, 0x0

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044A044Aъъ044A()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->bъъ044Aъъ044A:I

    :cond_1
    return-void

    :cond_2
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public static b044A044A044Aъъ044A()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b044Aъъ044Aъ044A()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bъ044A044Aъъ044A()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->b044Aъ044Aъъ044A:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->bъъъ044Aъ044A:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->bъъ044Aъъ044A:I

    if-eq v0, v1, :cond_1

    const/16 v0, -0x4e

    add-int/lit8 v0, v0, -0x48

    mul-int/lit8 v0, v0, -0x51

    invoke-static {}, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044A044Aъъ044A()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044A044Aъъ044A()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->bъъ044Aъъ044A:I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044A044Aъъ044A()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->b044Aъ044Aъъ044A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->bъъъ044Aъ044A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044A044Aъъ044A()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    const/16 v0, 0x38

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->bъъ044Aъъ044A:I

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    sget v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/utils/Log;->b044Aъъ044Aъ044A()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->bъъъ044Aъ044A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0x62

    add-int/lit8 v0, v0, -0x5e

    mul-int/lit8 v0, v0, -0xc

    const/16 v0, 0x4b

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    const/16 v0, 0x9

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->bъъ044Aъъ044A:I

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    :pswitch_0
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    :cond_0
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->b044Aъ044Aъъ044A:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->bъъъ044Aъ044A:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/utils/Log;->bъъ044Aъъ044A:I

    if-eq v0, v1, :cond_1

    const/16 v0, -0x48

    add-int/lit8 v0, v0, 0x4a

    mul-int/lit8 v0, v0, 0x2b

    invoke-static {}, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044A044Aъъ044A()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->b044A044Aъъъ044A:I

    const/16 v0, 0x35

    sput v0, Lcom/immersion/hapticmediasdk/utils/Log;->bъъ044Aъъ044A:I

    goto :goto_0
.end method
