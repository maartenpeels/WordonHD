.class public final Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/al;


# instance fields
.field public final height:I

.field public final heightPixels:I

.field public final lS:Ljava/lang/String;

.field public final lT:Z

.field public final lU:[Lcom/google/android/gms/internal/ak;

.field public final versionCode:I

.field public final width:I

.field public final widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/al;

    invoke-direct {v0}, Lcom/google/android/gms/internal/al;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x2

    const-string v2, "interstitial_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ak;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ak;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ak;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ak;->lS:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ak;->height:I

    iput p4, p0, Lcom/google/android/gms/internal/ak;->heightPixels:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ak;->lT:Z

    iput p6, p0, Lcom/google/android/gms/internal/ak;->width:I

    iput p7, p0, Lcom/google/android/gms/internal/ak;->widthPixels:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget-object v0, p2, v6

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ak;->versionCode:I

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ak;->lT:Z

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ak;->width:I

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ak;->height:I

    iget v1, p0, Lcom/google/android/gms/internal/ak;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move v1, v7

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ak;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    move v2, v7

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    if-eqz v1, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/ak;->a(Landroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ak;->widthPixels:I

    iget v4, p0, Lcom/google/android/gms/internal/ak;->widthPixels:I

    int-to-float v4, v4

    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    :goto_2
    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/google/android/gms/internal/ak;->c(Landroid/util/DisplayMetrics;)I

    move-result v5

    :goto_3
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/dv;->a(Landroid/util/DisplayMetrics;I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ak;->heightPixels:I

    if-nez v1, :cond_0

    if-eqz v2, :cond_5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_as"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lS:Ljava/lang/String;

    :goto_4
    array-length v0, p2

    if-le v0, v7, :cond_6

    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/gms/internal/ak;

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    move v0, v6

    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    new-instance v2, Lcom/google/android/gms/internal/ak;

    aget-object v3, p2, v0

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/google/android/gms/internal/ak;->width:I

    iget v5, p0, Lcom/google/android/gms/internal/ak;->width:I

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/dv;->a(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ak;->widthPixels:I

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/google/android/gms/internal/ak;->height:I

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lS:Ljava/lang/String;

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    :cond_7
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ak;[Lcom/google/android/gms/internal/ak;)V
    .locals 9

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/android/gms/internal/ak;->lS:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/internal/ak;->height:I

    iget v4, p1, Lcom/google/android/gms/internal/ak;->heightPixels:I

    iget-boolean v5, p1, Lcom/google/android/gms/internal/ak;->lT:Z

    iget v6, p1, Lcom/google/android/gms/internal/ak;->width:I

    iget v7, p1, Lcom/google/android/gms/internal/ak;->widthPixels:I

    move-object v0, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ak;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ak;)V

    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;)I
    .locals 1

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static b(Landroid/util/DisplayMetrics;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ak;->c(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static c(Landroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method


# virtual methods
.method public aA()Lcom/google/android/gms/ads/AdSize;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ak;->width:I

    iget v1, p0, Lcom/google/android/gms/internal/ak;->height:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lS:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/a;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/al;->a(Lcom/google/android/gms/internal/ak;Landroid/os/Parcel;I)V

    return-void
.end method
