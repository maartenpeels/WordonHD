.class public Lcom/urbanairship/actions/Action$ActivityResult;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/actions/Action$ActivityResult;->a:I

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/actions/Action$ActivityResult;ILandroid/content/Intent;)V
    .locals 0

    iput p1, p0, Lcom/urbanairship/actions/Action$ActivityResult;->a:I

    iput-object p2, p0, Lcom/urbanairship/actions/Action$ActivityResult;->b:Landroid/content/Intent;

    return-void
.end method
