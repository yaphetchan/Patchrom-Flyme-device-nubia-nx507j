.class final Landroid/widget/Toast$FlymeInjector;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static mPkgName:Ljava/lang/String;

.field private static mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, ""

    sput-object v0, Landroid/widget/Toast$FlymeInjector;->mText:Ljava/lang/CharSequence;

    const-string v0, ""

    sput-object v0, Landroid/widget/Toast$FlymeInjector;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkSameMsg(Landroid/widget/Toast;)Z
    .locals 7
    .param p0, "toast"    # Landroid/widget/Toast;

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "msg":Ljava/lang/CharSequence;
    sget-object v4, Landroid/widget/Toast$FlymeInjector;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/widget/Toast$FlymeInjector;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    sput-object v2, Landroid/widget/Toast$FlymeInjector;->mPkgName:Ljava/lang/String;

    sput-object v1, Landroid/widget/Toast$FlymeInjector;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .end local v1    # "msg":Ljava/lang/CharSequence;
    .end local v3    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    return v6
.end method

.method static resetFlymeExtraFields()V
    .locals 1

    .prologue
    const-string v0, ""

    sput-object v0, Landroid/widget/Toast$FlymeInjector;->mPkgName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/widget/Toast$FlymeInjector;->mText:Ljava/lang/CharSequence;

    return-void
.end method
