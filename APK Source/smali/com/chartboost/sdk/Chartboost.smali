.class public final Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$a;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# static fields
.field protected static a:Landroid/os/Handler;

.field protected static b:Lcom/chartboost/sdk/Libraries/k;

.field private static volatile c:Lcom/chartboost/sdk/Chartboost;

.field private static d:Lcom/chartboost/sdk/CBImpressionActivity;

.field private static e:Lcom/chartboost/sdk/Model/a;

.field private static f:Lcom/chartboost/sdk/impl/az;

.field private static g:Lcom/chartboost/sdk/impl/bb;

.field private static h:Lcom/chartboost/sdk/impl/m;

.field private static i:Lcom/chartboost/sdk/Tracking/a;

.field private static j:Z

.field private static k:Landroid/util/SparseBooleanArray;

.field private static l:Lcom/chartboost/sdk/e;

.field private static m:Lcom/chartboost/sdk/c;

.field private static n:Z

.field private static o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    .line 46
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 47
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 48
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    .line 49
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    .line 50
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    .line 51
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 52
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 53
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    .line 54
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    .line 55
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    .line 58
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 64
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->b:Landroid/app/Application;

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    .line 94
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    .line 96
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/os/Handler;)V

    .line 97
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    .line 98
    invoke-static {}, Lcom/chartboost/sdk/e;->a()Lcom/chartboost/sdk/e;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    .line 99
    sget-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/bb;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    .line 100
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    .line 101
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    .line 102
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 103
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    sget-object v1, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->a()Lcom/chartboost/sdk/impl/be;

    .line 105
    new-instance v0, Lcom/chartboost/sdk/Chartboost$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Chartboost$a;-><init>(Lcom/chartboost/sdk/Chartboost$1;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    .line 108
    invoke-static {p2}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;)V

    .line 109
    invoke-static {p3}, Lcom/chartboost/sdk/b;->b(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->a()V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/chartboost/sdk/Chartboost$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/Chartboost;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/Chartboost;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    return-object p0
.end method

.method protected static a()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/b;->c(Z)V

    .line 253
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->h()V

    .line 254
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->b()V

    .line 256
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->i()Z

    move-result v0

    .line 259
    new-instance v1, Lcom/chartboost/sdk/Chartboost$6;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/Chartboost$6;-><init>(Z)V

    invoke-static {v1}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b$a;)V

    .line 289
    return-void
.end method

.method private static a(IZ)V
    .locals 1

    .prologue
    .line 987
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 988
    return-void
.end method

.method protected static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    .line 219
    instance-of v1, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v1, :cond_1

    .line 220
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v1

    sput-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 221
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v1, v3}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 227
    :goto_0
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v2, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->e(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 224
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/chartboost/sdk/CBImpressionActivity;

    move-object v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 234
    instance-of v1, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v1, :cond_3

    .line 235
    const/4 v1, 0x0

    sput-boolean v1, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 238
    :cond_3
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    sget-object v2, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1, p0, v2}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a;)V

    .line 239
    const/4 v1, 0x0

    sput-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 241
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->u()V

    goto :goto_1
.end method

.method static synthetic a(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 2

    .prologue
    .line 814
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-nez v0, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    .line 816
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 817
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 820
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 821
    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 319
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$CBFramework;->ordinal()I

    move-result v1

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 320
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()V

    .line 322
    :cond_0
    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->t()V

    .line 325
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/Model/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "Chartboost"

    .line 838
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 839
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->d()Lcom/chartboost/sdk/impl/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bq;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 841
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 904
    :goto_0
    return-void

    .line 845
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 846
    sget-boolean v1, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-eqz v1, :cond_3

    .line 847
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 850
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 851
    const-string v0, "Chartboost"

    const-string v0, "Activity not found to display the view"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 855
    :goto_1
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 854
    :cond_2
    const-string v0, "Chartboost"

    const-string v0, "Missing view controller to manage the open impression activity"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 860
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->l()Z

    move-result v0

    if-nez v0, :cond_4

    .line 861
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 865
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    .line 866
    if-nez v0, :cond_5

    .line 867
    const-string v0, "Chartboost"

    const-string v0, "Failed to display impression as the host activity reference has been lost!"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 871
    :cond_5
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    if-eq v1, p0, :cond_6

    .line 873
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 876
    :cond_6
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 877
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 879
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_7

    move v2, v5

    .line 881
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_8

    move v3, v5

    .line 883
    :goto_3
    const-string v4, "paramFullscreen"

    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    move v2, v5

    :goto_4
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 886
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 887
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Chartboost impression activity not declared in manifest. Please add the following inside your manifest\'s <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v2, v6

    .line 879
    goto :goto_2

    :cond_8
    move v3, v6

    .line 881
    goto :goto_3

    :cond_9
    move v2, v6

    .line 883
    goto :goto_4

    .line 897
    :cond_a
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->l()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 899
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto/16 :goto_0

    .line 901
    :cond_b
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_0
.end method

.method protected static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 912
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/chartboost/sdk/CBImpressionActivity;)Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method protected static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 474
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 475
    return-void
.end method

.method private static b(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 973
    if-nez p0, :cond_0

    .line 976
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method protected static b(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->v()V

    .line 348
    :cond_0
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 0

    .prologue
    .line 927
    return-void
.end method

.method protected static b()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 428
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v3, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v2, v3, :cond_1

    .line 431
    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 449
    :goto_0
    return v0

    .line 433
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/Chartboost$10;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/Chartboost$10;-><init>(Lcom/chartboost/sdk/c;)V

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    move v0, v4

    .line 438
    goto :goto_0

    .line 440
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    new-instance v2, Lcom/chartboost/sdk/Chartboost$11;

    invoke-direct {v2, v1, v0}, Lcom/chartboost/sdk/Chartboost$11;-><init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/c;)V

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    move v0, v4

    .line 447
    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 778
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 781
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->d(Landroid/app/Activity;)V

    return-void
.end method

.method protected static c(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 390
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->g(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 391
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    .line 393
    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 395
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 397
    :cond_0
    invoke-static {p0, v2}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 398
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()V

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_2

    .line 403
    invoke-static {p0, v2}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 406
    :cond_2
    return-void
.end method

.method private static c(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 1

    .prologue
    .line 980
    if-nez p0, :cond_0

    .line 983
    :goto_0
    return-void

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->a()I

    move-result v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 575
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 576
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 577
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    const-string v0, "Chartboost"

    const-string v1, "cacheInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cacheMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 619
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 620
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 621
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 622
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    const-string v0, "Chartboost"

    const-string v1, "cacheMoreApps location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/aw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 531
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 532
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 533
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    const-string v0, "Chartboost"

    const-string v1, "cacheRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 503
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 504
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 505
    sget-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling clearImageCache()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->a()Lcom/chartboost/sdk/impl/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bd;->b()V

    .line 510
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/af;->a()V

    .line 511
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ae;->a()V

    .line 512
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aw;->a()V

    .line 513
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->b()V

    .line 514
    return-void
.end method

.method public static createSurfaceView(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1027
    invoke-static {p0}, Lcom/chartboost/sdk/impl/bh;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1029
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/Chartboost$3;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/Chartboost$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected static d()V
    .locals 1

    .prologue
    .line 826
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-eqz v0, :cond_0

    .line 827
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 828
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 830
    :cond_0
    return-void
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->f(Lcom/chartboost/sdk/Libraries/k;)V

    .line 167
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 170
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 175
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->createSurfaceView(Landroid/app/Activity;)V

    .line 178
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/bb;->d()V

    .line 179
    return-void
.end method

.method protected static d(Lcom/chartboost/sdk/Libraries/k;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 965
    if-nez p0, :cond_0

    move v0, v2

    .line 968
    :goto_0
    return v0

    .line 967
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static didPassAgeGate(Z)V
    .locals 0
    .param p0, "pass"    # Z

    .prologue
    .line 486
    invoke-static {p0}, Lcom/chartboost/sdk/b;->d(Z)V

    .line 487
    return-void
.end method

.method protected static e()Lcom/chartboost/sdk/e;
    .locals 1

    .prologue
    .line 993
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v0

    .line 994
    if-nez v0, :cond_0

    .line 995
    const/4 v0, 0x0

    .line 996
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    goto :goto_0
.end method

.method static synthetic e(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->f(Lcom/chartboost/sdk/Libraries/k;)V

    return-void
.end method

.method private static e(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 788
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v0, p0, :cond_0

    move v0, v2

    .line 793
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 789
    goto :goto_0

    .line 791
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v0, :cond_3

    .line 792
    if-nez p0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 793
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic f()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static f(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;)V

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 370
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 373
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    sget-object v1, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->c(Landroid/content/Context;)V

    .line 376
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->b()V

    .line 377
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->g()V

    .line 380
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    if-nez v0, :cond_2

    .line 381
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 382
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    .line 383
    return-void
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->l()Z

    move-result v0

    return v0
.end method

.method private static g(Lcom/chartboost/sdk/Libraries/k;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 800
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    if-nez p0, :cond_1

    .line 802
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    move v0, v2

    .line 807
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 802
    goto :goto_0

    .line 803
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 805
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v0, :cond_4

    .line 806
    if-nez p0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 807
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->a(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getAutoCacheAds()Z
    .locals 1

    .prologue
    .line 724
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Z

    move-result v0

    return v0
.end method

.method public static getCustomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    invoke-static {}, Lcom/chartboost/sdk/b;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDelegate()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 710
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    return-object v0
.end method

.method protected static getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 908
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImpressionsUseActivities()Z
    .locals 1

    .prologue
    .line 1004
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    return v0
.end method

.method public static getLoggingLevel()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 705
    invoke-static {}, Lcom/chartboost/sdk/b;->j()Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 921
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->b()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic h()Lcom/chartboost/sdk/impl/az;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    return-object v0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 564
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 565
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 566
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 608
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 609
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 610
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 611
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/aw;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 521
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 522
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 523
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic i()Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    return-object v0
.end method

.method public static isAnyViewVisible()Z
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 657
    if-nez v0, :cond_0

    .line 658
    const/4 v0, 0x0

    .line 660
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic j()Lcom/chartboost/sdk/impl/bb;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    return-object v0
.end method

.method static synthetic k()Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method private static l()Z
    .locals 1

    .prologue
    .line 960
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->d(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v0

    return v0
.end method

.method public static onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 412
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-eqz v0, :cond_1

    .line 418
    sput-boolean v1, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 419
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->b()Z

    .line 420
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 422
    goto :goto_0

    .line 424
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 152
    new-instance v0, Lcom/chartboost/sdk/Chartboost$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$4;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 455
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 456
    new-instance v0, Lcom/chartboost/sdk/Chartboost$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$2;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 330
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 331
    new-instance v0, Lcom/chartboost/sdk/Chartboost$8;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$8;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 296
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 297
    new-instance v0, Lcom/chartboost/sdk/Chartboost$7;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$7;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 185
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 186
    new-instance v0, Lcom/chartboost/sdk/Chartboost$5;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$5;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 353
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 354
    new-instance v0, Lcom/chartboost/sdk/Chartboost$9;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$9;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public static setAutoCacheAds(Z)V
    .locals 0
    .param p0, "autoCacheAds"    # Z

    .prologue
    .line 732
    invoke-static {p0}, Lcom/chartboost/sdk/b;->b(Z)V

    .line 733
    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .locals 0
    .param p0, "customID"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-static {p0}, Lcom/chartboost/sdk/b;->c(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/chartboost/sdk/ChartboostDelegate;

    .prologue
    .line 716
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/a;)V

    .line 717
    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 0
    .param p0, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;

    .prologue
    .line 671
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)V

    .line 672
    return-void
.end method

.method public static setImpressionsUseActivities(Z)V
    .locals 0
    .param p0, "impressionsUseActivities"    # Z

    .prologue
    .line 1020
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 1021
    return-void
.end method

.method public static setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 0
    .param p0, "lvl"    # Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .prologue
    .line 698
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 699
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .locals 0
    .param p0, "shouldDisplay"    # Z

    .prologue
    .line 754
    invoke-static {p0}, Lcom/chartboost/sdk/b;->g(Z)V

    .line 755
    return-void
.end method

.method public static setShouldPauseClickForConfirmation(Z)V
    .locals 0
    .param p0, "shouldPause"    # Z

    .prologue
    .line 494
    invoke-static {p0}, Lcom/chartboost/sdk/b;->e(Z)V

    .line 495
    return-void
.end method

.method public static setShouldPrefetchVideoContent(Z)V
    .locals 0
    .param p0, "shouldPrefetch"    # Z

    .prologue
    .line 763
    invoke-static {p0}, Lcom/chartboost/sdk/b;->h(Z)V

    .line 764
    if-eqz p0, :cond_0

    .line 765
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->b()V

    .line 768
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->d()V

    goto :goto_0
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .locals 0
    .param p0, "shouldRequest"    # Z

    .prologue
    .line 743
    invoke-static {p0}, Lcom/chartboost/sdk/b;->f(Z)V

    .line 744
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 593
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 594
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 595
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    const-string v0, "Chartboost"

    const-string v1, "showInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 637
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 638
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 639
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    const-string v0, "Chartboost"

    const-string v1, "showMoreApps location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/aw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-static {}, Lcom/chartboost/sdk/b;->p()V

    .line 548
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 549
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 550
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    const-string v0, "Chartboost"

    const-string v1, "showRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, " "

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/chartboost/sdk/c$p;->check(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    aget-object p1, v0, v2

    aget-object p2, v0, v3

    .line 124
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    if-nez v0, :cond_4

    .line 125
    const-class v0, Lcom/chartboost/sdk/Chartboost;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    if-nez v1, :cond_3

    .line 127
    if-nez p0, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Activity object is null. Please pass a valid activity object"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 131
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "appId or appSignature is null. Please pass a valid id\'s"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2
    new-instance v1, Lcom/chartboost/sdk/Chartboost$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/chartboost/sdk/Chartboost$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 140
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_4
    return-void
.end method
