.class public final Lcom/google/android/gms/internal/kr;
.super Ljava/lang/Object;


# static fields
.field public static final adX:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kr;->adX:Ljava/lang/Object;

    return-void
.end method

.method public static equals([I[I)Z
    .locals 1
    .param p0, "field1"    # [I
    .param p1, "field2"    # [I

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 8
    .param p0, "field1"    # [Ljava/lang/Object;
    .param p1, "field2"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    move v0, v6

    :goto_0
    if-nez p1, :cond_1

    move v1, v6

    :goto_1
    move v2, v6

    move v3, v6

    :goto_2
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    array-length v0, p0

    goto :goto_0

    :cond_1
    array-length v1, p1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v4, p1, v2

    if-nez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    if-lt v3, v0, :cond_4

    move v4, v7

    :goto_4
    if-lt v2, v1, :cond_5

    move v5, v7

    :goto_5
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    move v0, v7

    :goto_6
    return v0

    :cond_4
    move v4, v6

    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_5

    :cond_6
    if-eq v4, v5, :cond_7

    move v0, v6

    goto :goto_6

    :cond_7
    aget-object v4, p0, v3

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v6

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static hashCode([I)I
    .locals 1
    .param p0, "field"    # [I

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 4
    .param p0, "field"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    :goto_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v3, p0, v1

    if-eqz v3, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length v0, p0

    goto :goto_0

    :cond_2
    return v2
.end method
