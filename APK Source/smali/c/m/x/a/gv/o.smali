.class final Lc/m/x/a/gv/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lc/m/x/a/gv/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field j:Landroid/os/Bundle;

.field k:Lc/m/x/a/gv/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/m/x/a/gv/p;

    invoke-direct {v0}, Lc/m/x/a/gv/p;-><init>()V

    sput-object v0, Lc/m/x/a/gv/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/o;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/o;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lc/m/x/a/gv/o;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/o;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/o;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/o;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lc/m/x/a/gv/o;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lc/m/x/a/gv/o;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/o;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public constructor <init>(Lc/m/x/a/gv/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/o;->a:Ljava/lang/String;

    iget v0, p1, Lc/m/x/a/gv/d;->mIndex:I

    iput v0, p0, Lc/m/x/a/gv/o;->b:I

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mFromLayout:Z

    iput-boolean v0, p0, Lc/m/x/a/gv/o;->c:Z

    iget v0, p1, Lc/m/x/a/gv/d;->mFragmentId:I

    iput v0, p0, Lc/m/x/a/gv/o;->d:I

    iget v0, p1, Lc/m/x/a/gv/d;->mContainerId:I

    iput v0, p0, Lc/m/x/a/gv/o;->e:I

    iget-object v0, p1, Lc/m/x/a/gv/d;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lc/m/x/a/gv/o;->f:Ljava/lang/String;

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mRetainInstance:Z

    iput-boolean v0, p0, Lc/m/x/a/gv/o;->g:Z

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mDetached:Z

    iput-boolean v0, p0, Lc/m/x/a/gv/o;->h:Z

    iget-object v0, p1, Lc/m/x/a/gv/d;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Lc/m/x/a/gv/o;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/gv/g;Lc/m/x/a/gv/d;)Lc/m/x/a/gv/d;
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/o;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/o;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Lc/m/x/a/gv/g;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/o;->a:Ljava/lang/String;

    iget-object v1, p0, Lc/m/x/a/gv/o;->i:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lc/m/x/a/gv/d;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lc/m/x/a/gv/d;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget-object v0, p0, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    invoke-virtual {p1}, Lc/m/x/a/gv/g;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget-object v1, p0, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    iput-object v1, v0, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget v1, p0, Lc/m/x/a/gv/o;->b:I

    invoke-virtual {v0, v1, p2}, Lc/m/x/a/gv/d;->setIndex(ILc/m/x/a/gv/d;)V

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget-boolean v1, p0, Lc/m/x/a/gv/o;->c:Z

    iput-boolean v1, v0, Lc/m/x/a/gv/d;->mFromLayout:Z

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/m/x/a/gv/d;->mRestored:Z

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget v1, p0, Lc/m/x/a/gv/o;->d:I

    iput v1, v0, Lc/m/x/a/gv/d;->mFragmentId:I

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget v1, p0, Lc/m/x/a/gv/o;->e:I

    iput v1, v0, Lc/m/x/a/gv/d;->mContainerId:I

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget-object v1, p0, Lc/m/x/a/gv/o;->f:Ljava/lang/String;

    iput-object v1, v0, Lc/m/x/a/gv/d;->mTag:Ljava/lang/String;

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget-boolean v1, p0, Lc/m/x/a/gv/o;->g:Z

    iput-boolean v1, v0, Lc/m/x/a/gv/d;->mRetainInstance:Z

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget-boolean v1, p0, Lc/m/x/a/gv/o;->h:Z

    iput-boolean v1, v0, Lc/m/x/a/gv/d;->mDetached:Z

    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iget-object v1, p1, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iput-object v1, v0, Lc/m/x/a/gv/d;->mFragmentManager:Lc/m/x/a/gv/j;

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiated fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/o;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lc/m/x/a/gv/o;->c:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lc/m/x/a/gv/o;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lc/m/x/a/gv/o;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lc/m/x/a/gv/o;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/o;->g:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lc/m/x/a/gv/o;->h:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lc/m/x/a/gv/o;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
