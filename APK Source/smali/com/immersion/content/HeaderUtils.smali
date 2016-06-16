.class public abstract Lcom/immersion/content/HeaderUtils;
.super Ljava/lang/Object;


# static fields
.field public static b044Aъъ044A044Aъ:I = 0x1

.field public static bъ044Aъ044A044Aъ:I = 0x2

.field public static bъъъ044A044Aъ:I = 0x56


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    :pswitch_0
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget v0, Lcom/immersion/content/HeaderUtils;->bъъъ044A044Aъ:I

    sget v1, Lcom/immersion/content/HeaderUtils;->b044Aъъ044A044Aъ:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HeaderUtils;->bъ044Aъ044A044Aъ:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0x10

    add-int/lit8 v0, v0, 0x30

    mul-int/lit8 v0, v0, 0x63

    const/16 v0, 0x35

    sput v0, Lcom/immersion/content/HeaderUtils;->bъъъ044A044Aъ:I

    invoke-static {}, Lcom/immersion/content/HeaderUtils;->b044A044Aъ044A044Aъ()I

    move-result v0

    sput v0, Lcom/immersion/content/HeaderUtils;->b044Aъъ044A044Aъ:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b044A044Aъ044A044Aъ()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method


# virtual methods
.method public abstract calculateBlockRate()I
.end method

.method public abstract calculateBlockSize()I
.end method

.method public abstract calculateByteOffsetIntoHapticData(I)I
.end method

.method public abstract dispose()V
.end method

.method public abstract getContentUUID()Ljava/lang/String;
.end method

.method public abstract getEncryption()I
.end method

.method public abstract getMajorVersionNumber()I
.end method

.method public abstract getMinorVersionNumber()I
.end method

.method public abstract getNumChannels()I
.end method

.method public abstract setEncryptedHSI(Ljava/nio/ByteBuffer;I)V
.end method
