<div class="ui comments">
  <h3 class="ui dividing header">Replies</h3>
  {% for comment in replies %}
  <div class="comment">
    <a class="avatar">
      <img src="https://steemstats.com/images/avatar.8418a25d.png">
    </a>
    <div class="content">
      <div class="author">
        Reply on
        <a href="/tag/@{{ comment.parent_author }}/{{ comment.parent_permlink }}">
          {{ comment.root_title }}
        </a>
        by
        <a href="/@{{ comment.parent_author }}">
          {{ comment.parent_author }}
        </a>
      </div>
      <div class="metadata">
        <span class="date">
          {{ comment.author }} responded on {{ comment.created.toDateTime().format('Y-m-d H:i') }}
        </span>
      </div>
      <div class="text">
        <p>
          {{ markdown(comment.body) }}
        </p>
      </div>
      <div class="actions">
        <a class="reply" href="https://steemit.com/tag/@{{ comment.author }}/{{ comment.permlink }}" target="_blank">
          View on Steemit / Reply
        </a>
      </div>
    </div>
  </div>
  {% endfor %}
</div>