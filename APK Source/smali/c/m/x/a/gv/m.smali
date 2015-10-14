.class final Lc/m/x/a/gv/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lc/m/x/a/gv/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:[Lc/m/x/a/gv/o;

.field b:[I

.field c:[Lc/m/x/a/gv/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/m/x/a/gv/n;

    invoke-direct {v0}, Lc/m/x/a/gv/n;-><init>()V

    sput-object v0, Lc/m/x/a/gv/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/m/x/a/gv/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/m/x/a/gv/o;

    iput-object v0, p0, Lc/m/x/a/gv/m;->a:[Lc/m/x/a/gv/o;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/m;->b:[I

    sget-object v0, Lc/m/x/a/gv/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/m/x/a/gv/b;

    iput-object v0, p0, Lc/m/x/a/gv/m;->c:[Lc/m/x/a/gv/b;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/m;->a:[Lc/m/x/a/gv/o;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lc/m/x/a/gv/m;->b:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lc/m/x/a/gv/m;->c:[Lc/m/x/a/gv/b;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
