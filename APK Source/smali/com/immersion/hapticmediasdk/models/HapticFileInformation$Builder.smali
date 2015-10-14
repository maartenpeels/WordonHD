.class public Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static b04210421С0421СС:I = 0x1

.field public static b0421С04210421СС:I = 0x0

.field public static bС0421С0421СС:I = 0x42

.field public static bСС04210421СС:I = 0x2


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
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v0, 0x2f

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v0, 0x3c

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    :goto_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b0421042104210421СС()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static b0421С0421С0421С()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic b0425042504250425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->h:I

    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v2, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v2, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return v0

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

.method public static synthetic b04250425Х0425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
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
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0xa

    add-int/lit8 v0, v0, -0x66

    mul-int/lit8 v0, v0, -0x6a

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->d:I

    return v0

    nop

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

.method public static synthetic b04250425ХХ04250425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 3

    const/4 v2, 0x4

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v0, 0x37

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v0, 0x13

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    :goto_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->l:I

    return v0

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

.method public static synthetic b0425Х04250425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v0, 0x0

    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v2, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_0

    :goto_0
    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v2, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    move v1, v3

    :goto_1
    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->f:I

    return v0

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

.method public static synthetic b0425ХХ0425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С0421С0421С()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0xd

    add-int/lit8 v0, v0, -0x10

    mul-int/lit8 v0, v0, 0x41

    const/16 v0, 0x29

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v0, 0x24

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static synthetic b0425ХХХ04250425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
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
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->j:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС0421С0421С()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/16 v1, -0x48

    add-int/lit8 v1, v1, -0x74

    mul-int/lit8 v1, v1, 0x57

    const/16 v1, 0x54

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :pswitch_2
    return v0

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static bС042104210421СС()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public static bСС0421С0421С()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic bХ042504250425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 2

    const/4 v1, 0x4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->g:I

    return v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС0421С0421С()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x44

    add-int/lit8 v0, v0, -0x71

    mul-int/lit8 v0, v0, -0x42

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    goto :goto_0
.end method

.method public static synthetic bХ0425Х0425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
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
    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x21

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, -0x4b

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->c:I

    return v0

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

.method public static synthetic bХ0425ХХ04250425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    add-int/lit8 v0, v0, -0x1a

    mul-int/lit8 v0, v0, -0x64

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v0, 0xd

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static synthetic bХХ04250425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
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
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->e:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС0421С0421С()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/4 v1, 0x1

    add-int/lit8 v1, v1, 0x2

    const/16 v1, 0x4c

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v1, 0x5d

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :pswitch_2
    return v0

    nop

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic bХХХ0425Х0425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x1

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->a:Ljava/lang/String;

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v3, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v1, 0x3a

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public static synthetic bХХХХ04250425(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)[I
    .locals 3

    const/4 v2, 0x4

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421042104210421СС()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0x21

    add-int/lit8 v0, v0, -0x68

    mul-int/lit8 v0, v0, 0x21

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :pswitch_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->i:[I

    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    new-instance v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    :cond_0
    mul-int/lit8 v1, v3, 0x3

    add-int/lit8 v1, v3, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    :goto_0
    const/4 v1, 0x0

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v2, v3, :cond_1

    const/16 v2, 0x69

    add-int/lit8 v2, v2, 0x6

    mul-int/lit8 v2, v2, -0x20

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_1
    invoke-direct {v0, p0, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;Lrrrrrr/rrrcrr;)V

    return-object v0

    :cond_2
    mul-int/lit8 v1, v3, 0x3

    add-int/lit8 v1, v3, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public setActuatorArray([I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 3

    const/4 v2, 0x4

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
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС0421С0421С()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_0

    const/16 v0, -0x3b

    add-int/lit8 v0, v0, -0x64

    mul-int/lit8 v0, v0, -0x75

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v0, 0x35

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->i:[I

    return-object p0

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

.method public setBitsPerSample(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС0421С0421С()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421042104210421СС()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x5a

    add-int/lit8 v0, v0, 0x60

    mul-int/lit8 v0, v0, 0xc

    const/16 v0, 0x47

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v0, 0x29

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :pswitch_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setCompressionScheme(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 2

    const/4 v1, 0x4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :goto_0
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС0421С0421С()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_1
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->j:I

    return-object p0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setEncoding(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 3

    const/4 v2, 0x3

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x65

    add-int/lit8 v0, v0, -0xe

    mul-int/lit8 v0, v0, -0x3c

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v0, 0x62

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

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
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->e:I

    return-object p0

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

.method public setFilePath(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public setHapticDataLength(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С0421С0421С()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v0, 0xe

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public setHapticDataStartByteOffset(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public setMajorVersion(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 5

    const/16 v4, 0x12

    const/4 v3, 0x4

    const/4 v2, 0x1

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->c:I

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    :goto_0
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421042104210421СС()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v2, 0x2

    sput v4, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sput v4, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_1
    return-object p0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v3, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setMinorVersion(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 3

    const/4 v2, 0x3

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0x23

    add-int/lit8 v0, v0, -0x78

    mul-int/lit8 v0, v0, -0x64

    const/16 v0, 0x29

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :pswitch_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->d:I

    :pswitch_1
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    :goto_0
    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v2, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    return-object p0

    nop

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

.method public setNumberOfChannels(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 3

    const/4 v2, 0x4

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С0421С0421С()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, -0x27

    add-int/lit8 v0, v0, -0x46

    mul-int/lit8 v0, v0, 0xd

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    const/16 v0, 0x20

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->h:I

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
    return-object p0

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

.method public setSampleHertz(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, -0x1

    :cond_0
    add-int/lit8 v2, v4, 0x1

    mul-int/lit8 v2, v4, 0x5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :goto_0
    :try_start_0
    new-array v2, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x35

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->f:I

    return-object p0

    :cond_1
    const/4 v2, 0x3

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v2, v2, 0x9

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setTotalFileLength(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04210421С0421СС:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bСС04210421СС:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    if-eq v0, v1, :cond_0

    const/16 v0, -0x50

    add-int/lit8 v0, v0, 0x7c

    mul-int/lit8 v0, v0, -0x22

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС0421С0421СС:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bС042104210421СС()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0421С04210421СС:I

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0
.end method
