.class public final Lrrrrrr/rrrcrr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rrrcrr"
.end annotation


# static fields
.field public static b0446ц04460446ц0446:I = 0x0

.field public static bц044604460446ц0446:I = 0x1

.field public static bц0446цц04460446:I = 0x2

.field public static bцц04460446ц0446:I = 0x54


# direct methods
.method public constructor <init>()V
    .locals 2

    sget v0, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    sget v1, Lrrrrrr/rrrcrr;->bц044604460446ц0446:I

    add-int/2addr v0, v1

    sget v1, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    mul-int/2addr v0, v1

    invoke-static {}, Lrrrrrr/rrrcrr;->b0446044604460446ц0446()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lrrrrrr/rrrcrr;->b0446ц04460446ц0446:I

    if-eq v0, v1, :cond_0

    const/16 v0, -0xd

    add-int/lit8 v0, v0, -0x33

    mul-int/lit8 v0, v0, 0x3

    invoke-static {}, Lrrrrrr/rrrcrr;->bцццц04460446()I

    move-result v0

    sput v0, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    invoke-static {}, Lrrrrrr/rrrcrr;->bцццц04460446()I

    move-result v0

    sput v0, Lrrrrrr/rrrcrr;->b0446ц04460446ц0446:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static b0446044604460446ц0446()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static b04460446цц04460446()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static b0446ццц04460446()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bцццц04460446()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 4

    const/4 v3, 0x4

    new-instance v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-static {}, Lrrrrrr/rrrcrr;->bцццц04460446()I

    move-result v1

    invoke-static {}, Lrrrrrr/rrrcrr;->b0446ццц04460446()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lrrrrrr/rrrcrr;->bцццц04460446()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lrrrrrr/rrrcrr;->bц0446цц04460446:I

    rem-int/2addr v1, v2

    sget v2, Lrrrrrr/rrrcrr;->b0446ц04460446ц0446:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-static {}, Lrrrrrr/rrrcrr;->bцццц04460446()I

    move-result v1

    sput v1, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    invoke-static {}, Lrrrrrr/rrrcrr;->bцццц04460446()I

    move-result v1

    sput v1, Lrrrrrr/rrrcrr;->b0446ц04460446ц0446:I

    :cond_0
    invoke-direct {v0, p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Landroid/os/Parcel;)V

    :pswitch_0
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    add-int/lit8 v1, v3, 0x1

    mul-int/lit8 v1, v3, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return-object v0

    nop

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
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lrrrrrr/rrrcrr;->createFromParcel(Landroid/os/Parcel;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget v1, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    sget v2, Lrrrrrr/rrrcrr;->bц044604460446ц0446:I

    add-int/2addr v1, v2

    sget v2, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    mul-int/2addr v1, v2

    invoke-static {}, Lrrrrrr/rrrcrr;->b0446044604460446ц0446()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {}, Lrrrrrr/rrrcrr;->b04460446цц04460446()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x15

    add-int/lit8 v1, v1, -0x15

    mul-int/lit8 v1, v1, 0x74

    const/16 v1, 0x2e

    sput v1, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    invoke-static {}, Lrrrrrr/rrrcrr;->bцццц04460446()I

    move-result v1

    sput v1, Lrrrrrr/rrrcrr;->b0446ц04460446ц0446:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public newArray(I)[Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 3

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
    new-array v0, p1, [Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    sget v1, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    sget v2, Lrrrrrr/rrrcrr;->bц044604460446ц0446:I

    add-int/2addr v1, v2

    sget v2, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    mul-int/2addr v1, v2

    sget v2, Lrrrrrr/rrrcrr;->bц0446цц04460446:I

    rem-int/2addr v1, v2

    sget v2, Lrrrrrr/rrrcrr;->b0446ц04460446ц0446:I

    if-eq v1, v2, :cond_0

    const/16 v1, -0x80

    add-int/lit8 v1, v1, -0x6e

    mul-int/lit8 v1, v1, 0x53

    const/16 v1, 0x20

    sput v1, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    const/16 v1, 0x50

    sput v1, Lrrrrrr/rrrcrr;->b0446ц04460446ц0446:I

    :cond_0
    return-object v0

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

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x3

    sget v0, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    sget v1, Lrrrrrr/rrrcrr;->bц044604460446ц0446:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lrrrrrr/rrrcrr;->bц0446цц04460446:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lrrrrrr/rrrcrr;->bцццц04460446()I

    move-result v0

    sput v0, Lrrrrrr/rrrcrr;->bцц04460446ц0446:I

    const/16 v0, 0x2f

    sput v0, Lrrrrrr/rrrcrr;->b0446ц04460446ц0446:I

    :pswitch_0
    invoke-virtual {p0, p1}, Lrrrrrr/rrrcrr;->newArray(I)[Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    move-result-object v0

    :pswitch_1
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v2, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_1

    :goto_0
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v2, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
