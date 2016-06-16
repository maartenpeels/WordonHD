.class public final Lc/m/x/a/ep/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lc/m/x/a/ep/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Lc/m/x/a/ep/k;

    invoke-direct {v0}, Lc/m/x/a/ep/k;-><init>()V

    sput-object v0, Lc/m/x/a/ep/a;->a:Lc/m/x/a/ep/g;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Lc/m/x/a/ep/j;

    invoke-direct {v0}, Lc/m/x/a/ep/j;-><init>()V

    sput-object v0, Lc/m/x/a/ep/a;->a:Lc/m/x/a/ep/g;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    new-instance v0, Lc/m/x/a/ep/i;

    invoke-direct {v0}, Lc/m/x/a/ep/i;-><init>()V

    sput-object v0, Lc/m/x/a/ep/a;->a:Lc/m/x/a/ep/g;

    goto :goto_0

    :cond_2
    new-instance v0, Lc/m/x/a/ep/h;

    invoke-direct {v0}, Lc/m/x/a/ep/h;-><init>()V

    sput-object v0, Lc/m/x/a/ep/a;->a:Lc/m/x/a/ep/g;

    goto :goto_0
.end method

.method static synthetic a()Lc/m/x/a/ep/g;
    .locals 1

    sget-object v0, Lc/m/x/a/ep/a;->a:Lc/m/x/a/ep/g;

    return-object v0
.end method
