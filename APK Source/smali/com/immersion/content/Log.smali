.class public Lcom/immersion/content/Log;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z = false

.field public static b04460446цццц:I = 0x0

.field public static b0446ц0446ццц:I = 0x2

.field public static bц0446цццц:I = 0x2d

.field public static bцц0446ццц:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    :cond_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :cond_2
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/immersion/content/Log;->bц0446цццц:I

    sget v1, Lcom/immersion/content/Log;->bцц0446ццц:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->bц0446цццц:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->b0446ц0446ццц:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->b04460446цццц:I

    if-eq v0, v1, :cond_1

    const/16 v0, -0x2d

    add-int/lit8 v0, v0, -0x1c

    mul-int/lit8 v0, v0, -0x46

    const/16 v0, 0xa

    sput v0, Lcom/immersion/content/Log;->bц0446цццц:I

    const/16 v0, 0x5f

    sput v0, Lcom/immersion/content/Log;->b04460446цццц:I

    goto :goto_0
.end method

.method public static bц04460446ццц()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
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

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/content/Log;->bц0446цццц:I

    sget v1, Lcom/immersion/content/Log;->bцц0446ццц:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->bц0446цццц:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->b0446ц0446ццц:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->b04460446цццц:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v0, 0x38

    sput v0, Lcom/immersion/content/Log;->bц0446цццц:I

    const/16 v0, 0x46

    sput v0, Lcom/immersion/content/Log;->b04460446цццц:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v3, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget v0, Lcom/immersion/content/Log;->bц0446цццц:I

    sget v1, Lcom/immersion/content/Log;->bцц0446ццц:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->bц0446цццц:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->b0446ц0446ццц:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->b04460446цццц:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v2, 0x2

    const/16 v0, 0x5c

    sput v0, Lcom/immersion/content/Log;->bц0446цццц:I

    const/16 v0, 0x11

    sput v0, Lcom/immersion/content/Log;->b04460446цццц:I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    :goto_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    :pswitch_0
    return-void

    :cond_1
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lcom/immersion/content/Log;->bц0446цццц:I

    sget v1, Lcom/immersion/content/Log;->bцц0446ццц:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/Log;->b0446ц0446ццц:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v2, 0x2

    const/16 v0, 0x4e

    sput v0, Lcom/immersion/content/Log;->bц0446цццц:I

    invoke-static {}, Lcom/immersion/content/Log;->bц04460446ццц()I

    move-result v0

    sput v0, Lcom/immersion/content/Log;->b04460446цццц:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
