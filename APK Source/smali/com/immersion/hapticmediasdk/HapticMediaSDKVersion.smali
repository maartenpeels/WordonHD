.class public Lcom/immersion/hapticmediasdk/HapticMediaSDKVersion;
.super Ljava/lang/Object;


# static fields
.field public static final Version:Ljava/lang/String; = "v2.0.68.4"

.field public static b0421042104210421С0421:I = 0x1

.field public static bС042104210421С0421:I = 0x2b

.field public static bСССС04210421:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    :pswitch_0
    return-void

    :cond_1
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v3, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget v0, Lcom/immersion/hapticmediasdk/HapticMediaSDKVersion;->bС042104210421С0421:I

    sget v1, Lcom/immersion/hapticmediasdk/HapticMediaSDKVersion;->b0421042104210421С0421:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/HapticMediaSDKVersion;->bСССС04210421:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v2, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/HapticMediaSDKVersion;->b0421ССС04210421()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/HapticMediaSDKVersion;->bС042104210421С0421:I

    const/16 v0, 0x16

    sput v0, Lcom/immersion/hapticmediasdk/HapticMediaSDKVersion;->b0421042104210421С0421:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b0421ССС04210421()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method
