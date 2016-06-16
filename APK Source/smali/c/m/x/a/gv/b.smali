.class final Lc/m/x/a/gv/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lc/m/x/a/gv/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/m/x/a/gv/c;

    invoke-direct {v0}, Lc/m/x/a/gv/c;-><init>()V

    sput-object v0, Lc/m/x/a/gv/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/b;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/b;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/b;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/b;->f:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lc/m/x/a/gv/b;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/b;->h:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lc/m/x/a/gv/b;->i:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lc/m/x/a/gv/a;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lc/m/x/a/gv/a;->b:Lc/m/x/a/gv/a$a;

    move v1, v7

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    iget-object v0, v0, Lc/m/x/a/gv/a$a;->a:Lc/m/x/a/gv/a$a;

    goto :goto_0

    :cond_1
    iget v0, p1, Lc/m/x/a/gv/a;->d:I

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    iget-boolean v0, p1, Lc/m/x/a/gv/a;->k:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Lc/m/x/a/gv/a;->b:Lc/m/x/a/gv/a$a;

    move-object v1, v0

    move v0, v7

    :goto_1
    if-eqz v1, :cond_6

    iget-object v2, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, v1, Lc/m/x/a/gv/a$a;->c:I

    aput v4, v2, v0

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v2, v3, 0x1

    iget-object v4, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v4, v4, Lc/m/x/a/gv/d;->mIndex:I

    :goto_2
    aput v4, v0, v3

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v3, v2, 0x1

    iget v4, v1, Lc/m/x/a/gv/a$a;->e:I

    aput v4, v0, v2

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v2, v3, 0x1

    iget v4, v1, Lc/m/x/a/gv/a$a;->f:I

    aput v4, v0, v3

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v3, v2, 0x1

    iget v4, v1, Lc/m/x/a/gv/a$a;->g:I

    aput v4, v0, v2

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v2, v3, 0x1

    iget v4, v1, Lc/m/x/a/gv/a$a;->h:I

    aput v4, v0, v3

    iget-object v0, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v4, v2, 0x1

    aput v3, v0, v2

    move v2, v7

    :goto_3
    if-ge v2, v3, :cond_4

    iget-object v5, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v0, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    iget v0, v0, Lc/m/x/a/gv/d;->mIndex:I

    aput v0, v5, v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v6

    goto :goto_3

    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_4
    iget-object v1, v1, Lc/m/x/a/gv/a$a;->a:Lc/m/x/a/gv/a$a;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v3, v2, 0x1

    aput v7, v0, v2

    move v0, v3

    goto :goto_4

    :cond_6
    iget v0, p1, Lc/m/x/a/gv/a;->i:I

    iput v0, p0, Lc/m/x/a/gv/b;->b:I

    iget v0, p1, Lc/m/x/a/gv/a;->j:I

    iput v0, p0, Lc/m/x/a/gv/b;->c:I

    iget-object v0, p1, Lc/m/x/a/gv/a;->m:Ljava/lang/String;

    iput-object v0, p0, Lc/m/x/a/gv/b;->d:Ljava/lang/String;

    iget v0, p1, Lc/m/x/a/gv/a;->o:I

    iput v0, p0, Lc/m/x/a/gv/b;->e:I

    iget v0, p1, Lc/m/x/a/gv/a;->p:I

    iput v0, p0, Lc/m/x/a/gv/b;->f:I

    iget-object v0, p1, Lc/m/x/a/gv/a;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Lc/m/x/a/gv/b;->g:Ljava/lang/CharSequence;

    iget v0, p1, Lc/m/x/a/gv/a;->r:I

    iput v0, p0, Lc/m/x/a/gv/b;->h:I

    iget-object v0, p1, Lc/m/x/a/gv/a;->s:Ljava/lang/CharSequence;

    iput-object v0, p0, Lc/m/x/a/gv/b;->i:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/gv/j;)Lc/m/x/a/gv/a;
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "Instantiate "

    const-string v11, "FragmentManager"

    new-instance v1, Lc/m/x/a/gv/a;

    invoke-direct {v1, p1}, Lc/m/x/a/gv/a;-><init>(Lc/m/x/a/gv/j;)V

    move v2, v9

    move v0, v9

    :goto_0
    iget-object v3, p0, Lc/m/x/a/gv/b;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    new-instance v3, Lc/m/x/a/gv/a$a;

    invoke-direct {v3}, Lc/m/x/a/gv/a$a;-><init>()V

    iget-object v4, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v5, v0, 0x1

    aget v0, v4, v0

    iput v0, v3, Lc/m/x/a/gv/a$a;->c:I

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Instantiate "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " op #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " base fragment #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lc/m/x/a/gv/b;->a:[I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    if-ltz v0, :cond_2

    iget-object v5, p1, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    iput-object v0, v3, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    :goto_1
    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    iput v0, v3, Lc/m/x/a/gv/a$a;->e:I

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    iput v0, v3, Lc/m/x/a/gv/a$a;->f:I

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    iput v0, v3, Lc/m/x/a/gv/a$a;->g:I

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    iput v0, v3, Lc/m/x/a/gv/a$a;->h:I

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v4, v0, v4

    if-lez v4, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v3, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    move v0, v5

    move v5, v9

    :goto_2
    if-ge v5, v4, :cond_4

    sget-boolean v6, Lc/m/x/a/gv/j;->a:Z

    if-eqz v6, :cond_1

    const-string v6, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Instantiate "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set remove fragment #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc/m/x/a/gv/b;->a:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p1, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    iget-object v7, p0, Lc/m/x/a/gv/b;->a:[I

    add-int/lit8 v8, v0, 0x1

    aget v0, v7, v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    iget-object v6, v3, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v8

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v3, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    goto :goto_1

    :cond_3
    move v0, v5

    :cond_4
    invoke-virtual {v1, v3}, Lc/m/x/a/gv/a;->a(Lc/m/x/a/gv/a$a;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lc/m/x/a/gv/b;->b:I

    iput v0, v1, Lc/m/x/a/gv/a;->i:I

    iget v0, p0, Lc/m/x/a/gv/b;->c:I

    iput v0, v1, Lc/m/x/a/gv/a;->j:I

    iget-object v0, p0, Lc/m/x/a/gv/b;->d:Ljava/lang/String;

    iput-object v0, v1, Lc/m/x/a/gv/a;->m:Ljava/lang/String;

    iget v0, p0, Lc/m/x/a/gv/b;->e:I

    iput v0, v1, Lc/m/x/a/gv/a;->o:I

    iput-boolean v10, v1, Lc/m/x/a/gv/a;->k:Z

    iget v0, p0, Lc/m/x/a/gv/b;->f:I

    iput v0, v1, Lc/m/x/a/gv/a;->p:I

    iget-object v0, p0, Lc/m/x/a/gv/b;->g:Ljava/lang/CharSequence;

    iput-object v0, v1, Lc/m/x/a/gv/a;->q:Ljava/lang/CharSequence;

    iget v0, p0, Lc/m/x/a/gv/b;->h:I

    iput v0, v1, Lc/m/x/a/gv/a;->r:I

    iget-object v0, p0, Lc/m/x/a/gv/b;->i:Ljava/lang/CharSequence;

    iput-object v0, v1, Lc/m/x/a/gv/a;->s:Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Lc/m/x/a/gv/a;->a(I)V

    return-object v1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/b;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Lc/m/x/a/gv/b;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lc/m/x/a/gv/b;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lc/m/x/a/gv/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/b;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lc/m/x/a/gv/b;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lc/m/x/a/gv/b;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Lc/m/x/a/gv/b;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lc/m/x/a/gv/b;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
