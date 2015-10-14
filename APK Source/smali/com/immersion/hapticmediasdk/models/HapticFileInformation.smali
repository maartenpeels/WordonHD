.class public Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static b04210421С04210421С:I = 0x0

.field public static b0421С042104210421С:I = 0x2

.field public static bС0421042104210421С:I = 0x1

.field public static bС0421С04210421С:I = 0x51


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    new-instance v0, Lrrrrrr/rrrcrr;

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bСС042104210421С()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x53

    add-int/lit8 v1, v1, 0x65

    mul-int/lit8 v1, v1, 0x1

    const/16 v1, 0x51

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v1, 0x4f

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    invoke-direct {v0}, Lrrrrrr/rrrcrr;-><init>()V

    sput-object v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x3

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bСС042104210421С()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/4 v0, 0x6

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v0, 0x17

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    :pswitch_0
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bССССС0421()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, -0x6c

    add-int/lit8 v0, v0, 0x4a

    mul-int/lit8 v0, v0, -0x46

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :goto_0
    :try_start_2
    iget v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private constructor <init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bХХХ0425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0425ХХ0425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bХ0425Х0425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04250425Х0425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bХХ04250425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0425Х04250425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bХ042504250425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

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
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0425042504250425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bХХХХ04250425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0425ХХХ04250425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bХ0425ХХ04250425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04250425ХХ04250425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    return-void

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

.method public synthetic constructor <init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;Lrrrrrr/rrrcrr;)V
    .locals 2

    const/4 v1, 0x4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :goto_0
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421СССС0421()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x6e

    add-int/lit8 v0, v0, -0x54

    mul-int/lit8 v0, v0, -0x62

    const/16 v0, 0x2a

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b04210421042104210421С()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public static b0421СССС0421()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static bСС042104210421С()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bССССС0421()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v0, 0x48

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getActuatorArray()[I
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I

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
    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421СССС0421()I

    move-result v2

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v1, v2, :cond_0

    const/16 v1, -0x43

    add-int/lit8 v1, v1, -0x4d

    mul-int/lit8 v1, v1, 0x40

    const/4 v1, 0x6

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v1, 0x3f

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    return-object v0

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

.method public getBitsPerSample()I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bСС042104210421С()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v0, 0x42

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getCompressionScheme()I
    .locals 3

    const/4 v2, 0x3

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bСС042104210421С()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0xf

    add-int/lit8 v0, v0, -0x62

    mul-int/lit8 v0, v0, 0x37

    const/16 v0, 0x2b

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v0, 0x5e

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    :pswitch_0
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    return v0

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

.method public getEncoding()I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v0, 0x50

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getFileLength()I
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

    const/4 v0, 0x0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    :try_start_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421СССС0421()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    add-int/lit8 v0, v0, 0x59

    mul-int/lit8 v0, v0, 0x44

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getHapticDataLength()I
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :goto_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    return v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    mul-int/lit8 v1, v3, 0x5

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    goto :goto_0
.end method

.method public getHapticDataStartByteOffset()I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v2, 0x52

    sput v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    :goto_2
    :try_start_2
    new-array v1, v0, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    :try_start_3
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return v0

    :catch_3
    move-exception v0

    throw v0
.end method

.method public getMajorVersion()I
    .locals 4

    const/4 v2, 0x3

    const/4 v3, 0x1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    :cond_0
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v2, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v2, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v3, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    goto :goto_0
.end method

.method public getMinorVersion()I
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    :goto_0
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v2, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    return v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v3, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public getNumberOfChannels()I
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421042104210421С:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x46

    add-int/lit8 v1, v1, 0x3d

    mul-int/lit8 v1, v1, -0x5c

    const/16 v1, 0x42

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v1, 0xb

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_0
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getSampleHertz()I
    .locals 3

    const/4 v2, 0x4

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bСС042104210421С()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    :goto_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    :cond_0
    add-int/lit8 v1, v4, 0x1

    mul-int/lit8 v1, v4, 0x5

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bСС042104210421С()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b0421С042104210421С:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v3, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421042104210421С()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->bС0421С04210421С:I

    const/16 v0, 0x52

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b04210421С04210421С:I

    :cond_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_3
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0
.end method
