require "test_helper"

class PmTurboClone::FramesHelperTest < ActionView::TestCase
	test "frame with a model" do
		article = Article.new id: 1, content: "not relevant"

		assert_dom_equal %[<turbo-frame id="article_1"></turbo-frame>], turbo_frame_tag(article)
	end

	test "frame with a string" do
		assert_dom_equal %[<turbo-frame id="articles"></turbo-frame>], turbo_frame_tag("articles")
	end

	test "frame with a block" do
		article = Article.new id: 1, content: "not relevant"

		assert_dom_equal %[<turbo-frame id="article_1"><p>wow</p></turbo-frame>],
			turbo_frame_tag(article) { tag.p("wow")}
	end
end