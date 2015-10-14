.class final Lcom/milkmangames/extensions/android/coremobile/h;
.super Lcom/milkmangames/extensions/android/coremobile/x;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/h;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/coremobile/x;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    return-void
.end method


# virtual methods
.method protected final a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/h;->b:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->h(Lcom/milkmangames/extensions/android/coremobile/b;)Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v0

    return-object v0
.end method
