.class public Lcom/immersion/content/EndpointWarp;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String; = "EndpointWarp"

.field public static b041504150415Е0415Е:I = 0x27

.field public static b0415Е041504150415Е:I = 0x1

.field public static bЕ0415Е04150415Е:I = 0x2

.field public static bЕЕЕ04150415Е:I


# instance fields
.field a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;BBBBISB[BB)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :goto_0
    sget v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b0415ЕЕ04150415Е()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->bЕ0415Е04150415Е:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v0, 0xa

    sput v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    :cond_1
    invoke-direct/range {p0 .. p10}, Lcom/immersion/content/EndpointWarp;->create(Landroid/content/Context;BBBBISB[BB)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[BI)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    sget v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    sget v1, Lcom/immersion/content/EndpointWarp;->b0415Е041504150415Е:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->bЕ0415Е04150415Е:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->bЕЕ041504150415Е()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/content/EndpointWarp;->createWarp(Landroid/content/Context;[BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    return-void

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

.method public static b04150415Е04150415Е()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public static b0415ЕЕ04150415Е()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bЕЕ041504150415Е()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private native create(Landroid/content/Context;BBBBISB[BB)J
.end method

.method private native createWarp(Landroid/content/Context;[BI)J
.end method

.method private native disposeWarp(J)V
.end method

.method private native flushWarp(J)V
.end method

.method private native getWarpCurrentPosition(J)J
.end method

.method public static loadSharedLibrary()Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    :try_start_0
    const-string v0, "ImmEndpointWarpJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "EndpointWarp"

    const-string v2, "Unable to load libImmEndpointWarpJ.so.Please make sure this file is in the libs/armeabi folder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v1

    sget v2, Lcom/immersion/content/EndpointWarp;->b0415Е041504150415Е:I

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/content/EndpointWarp;->bЕ0415Е04150415Е:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    if-eq v1, v2, :cond_2

    const/4 v1, -0x5

    add-int/lit8 v1, v1, 0x43

    mul-int/lit8 v1, v1, -0x4d

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v1

    sput v1, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v1

    sput v1, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 v0, 0x0

    :cond_3
    mul-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v4, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-eq v1, v3, :cond_0

    mul-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v4, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Java HotSpot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0
.end method

.method private native startWarp(J)V
.end method

.method private native stopWarp(J)V
.end method

.method private native updateWarp(J[BIJJ)V
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, -0x1

    :goto_0
    :try_start_0
    new-array v1, v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x52

    sput v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    :try_start_1
    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->disposeWarp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    throw v0
.end method

.method public flush()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    :cond_0
    mul-int/lit8 v2, v4, 0x3

    add-int/lit8 v2, v4, 0x9

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    :goto_0
    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->flushWarp(J)V

    return-void

    :cond_1
    mul-int/lit8 v2, v4, 0x3

    add-int/lit8 v2, v4, 0x9

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    :goto_1
    :try_start_0
    new-array v2, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/16 v2, 0x28

    sput v2, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v0, 0x8

    sput v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    :goto_3
    :try_start_2
    new-array v0, v1, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    sget v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    sget v1, Lcom/immersion/content/EndpointWarp;->b0415Е041504150415Е:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->bЕ0415Е04150415Е:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v4, 0x2

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    :cond_0
    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    :cond_1
    add-int/lit8 v2, v5, 0x1

    mul-int/lit8 v2, v5, 0x5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->getWarpCurrentPosition(J)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const/4 v2, 0x3

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v2, v2, 0x9

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    goto :goto_0
.end method

.method public start()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget v2, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    sget v3, Lcom/immersion/content/EndpointWarp;->b0415Е041504150415Е:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/content/EndpointWarp;->bЕ0415Е04150415Е:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    add-int/lit8 v2, v2, 0x2

    const/16 v2, 0x1b

    sput v2, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v2

    sput v2, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->startWarp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 5

    const/4 v4, 0x4

    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v2

    sget v3, Lcom/immersion/content/EndpointWarp;->b0415Е041504150415Е:I

    add-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v3

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/content/EndpointWarp;->bЕ0415Е04150415Е:I

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    if-eq v2, v3, :cond_0

    const/16 v2, -0x38

    add-int/lit8 v2, v2, 0x73

    mul-int/lit8 v2, v2, 0x6e

    const/16 v2, 0xc

    sput v2, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v2

    sput v2, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    :cond_0
    add-int/lit8 v2, v4, 0x1

    mul-int/lit8 v2, v4, 0x5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->stopWarp(J)V

    return-void

    :cond_1
    add-int/lit8 v2, v4, 0x1

    mul-int/lit8 v2, v4, 0x5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public update([BIJJ)V
    .locals 9

    :try_start_0
    iget-wide v1, p0, Lcom/immersion/content/EndpointWarp;->a:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/immersion/content/EndpointWarp;->updateWarp(J[BIJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    sget v1, Lcom/immersion/content/EndpointWarp;->b0415Е041504150415Е:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->bЕ0415Е04150415Е:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    if-eq v0, v1, :cond_0

    const/16 v0, -0x36

    add-int/lit8 v0, v0, -0x1c

    mul-int/lit8 v0, v0, -0x45

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->b041504150415Е0415Е:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b04150415Е04150415Е()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->bЕЕЕ04150415Е:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method
