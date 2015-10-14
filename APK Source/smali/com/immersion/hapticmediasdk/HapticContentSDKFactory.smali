.class public Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "HapticContentSDKFactory"

.field public static b04460446044604460446ц:I = 0x13

.field public static b0446цццц0446:I = 0x2

.field public static bццццц0446:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->b04460446044604460446ц:I

    sget v1, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->bццццц0446:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->b0446цццц0446:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v2, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->bц0446ццц0446()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->b04460446044604460446ц:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->bц0446ццц0446()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->bццццц0446:I

    :cond_0
    :pswitch_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v3, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static GetNewSDKInstance(ILandroid/content/Context;)Lcom/immersion/hapticmediasdk/HapticContentSDK;
    .locals 6

    const/4 v1, 0x3

    const/4 v4, 0x0

    const-string v5, "HapticContentSDKFactory"

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->loadSharedLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;

    invoke-direct {v0, p1}, Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->bБ04110411Б04110411()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "HapticContentSDKFactory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->b04460446044604460446ц:I

    sget v3, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->bццццц0446:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->b0446цццц0446:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    add-int/lit8 v2, v2, 0x2

    const/16 v2, 0x2a

    sput v2, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->b04460446044604460446ц:I

    const/16 v2, 0x5c

    sput v2, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->bццццц0446:I

    :pswitch_1
    const-string v2, "Failed to create Haptic Content SDK instance. error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "HapticContentSDKFactory"

    const-string v0, "Failed to create a Haptic Content SDK instance. invalid context: null"

    invoke-static {v5, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    packed-switch p0, :pswitch_data_1

    const-string v0, "HapticContentSDKFactory"

    :pswitch_2
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_2

    :goto_1
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_3

    goto :goto_1

    :pswitch_3
    const-string v0, "Failed to create a Haptic Content SDK instance. Invalid mode"

    invoke-static {v5, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "HapticContentSDKFactory"

    const-string v1, "Haptic Content SDK instance was created successfully"

    invoke-static {v5, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static bц0446ццц0446()I
    .locals 1

    const/16 v0, 0x60

    return v0
.end method
