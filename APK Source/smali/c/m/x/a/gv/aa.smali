.class final Lc/m/x/a/gv/aa;
.super Ljava/lang/Object;


# static fields
.field static final a:[I

.field static final b:[J

.field static final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lc/m/x/a/gv/aa;->a:[I

    new-array v0, v1, [J

    sput-object v0, Lc/m/x/a/gv/aa;->b:[J

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lc/m/x/a/gv/aa;->c:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x1

    mul-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    shl-int v2, v3, v1

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_1

    shl-int v0, v3, v1

    sub-int/2addr v0, v4

    :cond_0
    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a([III)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    sub-int v1, p1, v4

    :goto_0
    if-gt v0, v1, :cond_2

    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    aget v3, p0, v2

    if-ge v3, p2, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p2, :cond_1

    sub-int v1, v2, v4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
